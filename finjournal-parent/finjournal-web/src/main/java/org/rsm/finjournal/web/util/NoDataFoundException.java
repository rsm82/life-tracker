package org.rsm.finjournal.web.util;

/**
 * NoDataFoundException is a Data layer exception,thrown when the query returns
 * no data
 *
 * @author 2020 Development Team
 *
 */
public class NoDataFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public NoDataFoundException() {
		super();
	}

	/**
	 * @param message
	 */
	public NoDataFoundException(final String message) {
		super(message);
	}

	/**
	 * @param message
	 * @param cause
	 */
	public NoDataFoundException(final String message, final Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param cause
	 */
	public NoDataFoundException(final Throwable cause) {
		super(cause);
	}
}
