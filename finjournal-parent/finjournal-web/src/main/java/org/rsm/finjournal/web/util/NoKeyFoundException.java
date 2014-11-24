package org.rsm.finjournal.web.util;

/**
 * NoKeyFoundException thrown when the properties file reading is failed.
 *
 * @author 2020 Development Team
 *
 */
public class NoKeyFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public NoKeyFoundException() {
		super();
	}

	/**
	 * @param message
	 */
	public NoKeyFoundException(final String message) {
		super(message);
	}

	/**
	 * @param message
	 * @param cause
	 */
	public NoKeyFoundException(final String message, final Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param cause
	 */
	public NoKeyFoundException(final Throwable cause) {
		super(cause);
	}
}
