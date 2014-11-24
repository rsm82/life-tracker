package org.rsm.finjournal.web.util;

import static org.rsm.finjournal.web.common.FinJournalWebConstants.CONST_NO_KEY_FOUND;
import static org.rsm.finjournal.web.common.FinJournalWebConstants.EMPTY;
import org.rsm.finjournal.web.util.NoDataFoundException;
import org.rsm.finjournal.web.util.NoKeyFoundException;

import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

/**
 * PropertiesUtil Class is used to read the properties from class path File
 *
 * @author 2020 Development Team
 */

public class PropertiesUtil extends PropertyPlaceholderConfigurer {

	private static ConcurrentHashMap<String, String> propertiesTable;

	private static final Logger logger = Logger.getLogger(PropertiesUtil.class);
	private transient int systemPropMd = SYSTEM_PROPERTIES_MODE_FALLBACK;

	/**
	 * This method will take the key and gives the related value from the
	 * property file. If key or value not found throws exception
	 *
	 * @param key
	 * @return
	 * @throws NoDataFoundException
	 * @throws NoKeyFoundException
	 */
	public static String getValueFromProperty(final String key)
			throws NoKeyFoundException, NoDataFoundException {

		String value = EMPTY;
		try {

			if (propertiesTable != null) {
				value = propertiesTable.get(key).trim();
			}

		} catch (NullPointerException ex) {
			logger.error(new StringBuilder(key).append(CONST_NO_KEY_FOUND)
					.toString());
			throw new RuntimeException();
		} catch (Exception ex) {
			logger.error(ex.getMessage(), ex);
			throw new RuntimeException();
		}

		return value;
	}

	/**
	 * This method will take the key and gives the related value from the
	 * property file. If key or value not found it returns null
	 *
	 * @param key
	 * @return
	 * @throws RuntimeException
	 */
	public static String checkValueFromProperty(final String key)
			throws RuntimeException {
		String propValue = CONST_NO_KEY_FOUND;
		try {
			if (StringUtils.isNotEmpty(propertiesTable.get(key))) {
				propValue = propertiesTable.get(key).trim();
			}
		} catch (BeansException be) {
			logger.error(be.getMessage(), be);
			throw new RuntimeException();
		} catch (Exception ex) {
			logger.error(ex.getMessage(), ex);
			throw new RuntimeException();
		}
		return propValue;

	}

	/**
	 * Method is used to get properties value
	 *
	 * @param name
	 * @return
	 */
//	public static String getProperty(final String name) {
//		return propertiesTable.get(name);
//	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * org.springframework.beans.factory.config.PropertyPlaceholderConfigurer
	 * #processProperties
	 * (org.springframework.beans.factory.config.ConfigurableListableBeanFactory
	 * , java.util.Properties)
	 */
	@Override
	protected void processProperties(
			final ConfigurableListableBeanFactory beanFactory,
			final Properties props) throws BeansException {

		super.processProperties(beanFactory, props);
		propertiesTable = new ConcurrentHashMap<String, String>();
		for (final Object key : props.keySet()) {
			final String keyStr = key.toString();
			final String valueStr = resolvePlaceholder(keyStr, props,
					systemPropMd);
			propertiesTable.put(keyStr, valueStr);
		}

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * org.springframework.beans.factory.config.PropertyPlaceholderConfigurer
	 * #setSystemPropertiesMode(int)
	 */
	@Override
	public void setSystemPropertiesMode(final int systemPropertiesMode) {
		super.setSystemPropertiesMode(systemPropertiesMode);
		systemPropMd = systemPropertiesMode;
	}

	/**
	 * Method is used to return Map values
	 *
	 * @return
	 */
	public static ConcurrentHashMap<String, String> getHashMapTable() {
		return propertiesTable;
	}
}
