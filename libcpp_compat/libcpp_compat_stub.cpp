/*
 * libcpp_compat_stub.cpp
 * 
 * Stub library providing the __libcpp_verbose_abort symbol
 * required by Android 15's libc++ but missing in Android 12.
 * 
 * This allows qseecomd and other Android 15 vendor binaries
 * to run on OrangeFox recovery (Android 12 base).
 */

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

extern "C" {

/*
 * __libcpp_verbose_abort - Verbose termination function
 * 
 * This function is called by libc++ when an unrecoverable error occurs.
 * It prints the error message to stderr and aborts.
 * 
 * @param format - printf-style format string
 * @param ... - variable arguments
 */
__attribute__((visibility("default")))
__attribute__((noreturn))
void _ZNSt3__122__libcpp_verbose_abortEPKcz(const char* format, ...) {
    va_list args;
    va_start(args, format);
    
    // Print to stderr
    fprintf(stderr, "libc++: ");
    vfprintf(stderr, format, args);
    fprintf(stderr, "\n");
    
    va_end(args);
    
    // Abort the program
    abort();
}

} // extern "C"
