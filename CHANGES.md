## 1.4.2 - 22-Jul-2021
* Fixed support for 32-bit Linux. Thanks go to ciprianbadescu for the spot.

## 1.4.1 - 30-Dec-2020
* Fix an FFI function declaration bug for Big Sur and later on Mac. Thanks go
  to Roman Gaufman for the spot and Martins Polakovs for testing.
* Fixed the changelog metadata URI.
* Added a .gitignore file.

## 1.4.0 - 6-Sep-2020
* The Sys::Filesystem.stat method now accepts a Pathname and Dir object as
  an argument. On most platforms it will also accept a File object. Thanks
  go to hirura for the patch.
* Fixed the statvfs struct layout on i686 platforms. Thanks go to
  Filipovici-Andrei for the patch.
* Switched from test-unit to rspec, and updated the tests.

## 1.3.4 - 17-Mar-2020
* Properly include a LICENSE file as per the Apache-2.0 license.

## 1.3.3 - 18-Feb-2020
* Linux now uses statvfs64 under the hood. This fixes a potential issue with
  32 bit systems. Thanks go to Tom Smyth for the spot.

## 1.3.2 - 8-Dec-2019
* Renamed various text files to include .rdoc extension so that github renders
  them nicely.

## 1.3.1 - 15-Oct-2019
* Fixed a bug where the Statvfs and Statfs structs were not allocated properly
  on Linux, which could cause issues. Thanks go to Daniele Orlandi for the spot.
* Added specs to ensure that the FFI struct size matches the C struct size.
  This required adding mkmf-lite as a development dependency.
* Added a slightly more pessimistic version requirement for test-unit.

## 1.3.0 - 3-Oct-2019
* Added the mount and umount singleton methods.
* Changed an internal class variable to a frozen constant.

## 1.2.0 - 1-Jan-2019
* Changed the license to Apache-2.0.
* Added the case_sensitive? and case_insensitive? instance methods to the
  Filesystem::Stat class.
* Refactored the Numeric helper methods into a single location.
* Fixed the deprecation warnings when running the tests on Windows.
* Added metadata to the gemspec.

## 1.1.9 - 26-Jan-2018
* The bytes_free and bytes_total methods were updated to use the fragment size
  instead of the block size. This fixes Macs using APFS, as well as Solaris 10.
  Thanks go to Mikhail Vasin for the spot.
* Removed the code specific to FreeBSD 10, which was ultimately an attempt
  to address the issue now resolved by the above change.
* Updated the cert again.

## 1.1.8 - 2-Sep-2017
* The stat and mount_point methods now call to_s on the string argument
  explicitly so that Pathname objects will now work with String#wincode.
* Updated some tests to avoid Fixnum warnings for Ruby 2.4.
* Updated the cert.

## 1.1.7 - 1-Aug-2016
* Fixed an issue in the stat method for MS Windows where the blocks_avail
  value was not correct. Thanks go to Maxime Lapointe for the spot.

## 1.1.6 - 17-May-2016
* On versions that use setmntent or fopen, explicitly raise an error if
  either of those calls return a null value.

## 1.1.5 - 5-Dec-2015
* This gem is now signed.
* The gem related tasks in the Rakefile now assume Rubygems 2.x.
* Updates to the gemspec, added cert_chain, removed rubyforge_project.
* Internal reorganization, and use of relative_require as appropriate.
* Added a sys-filesystem.rb file for convenience.

## 1.1.4 - 15-Mar-2015
* The File.mounts method no longer raises an error if a mount point
  is not accessible. Thanks go to Michael Pope for the patch.
* Some internal code reorganization.

## 1.1.3 - 1-Oct-2014
* Now ignores EPERM errors when trying to find the mount point for a path.
  Thanks go to petersen for the patch.
* The Filesystem.stat method now defaults to using the root path on Windows
  for volume information.

## 1.1.2 - 9-May-2014
* Added the percent_used, bytes_total, bytes_free and bytes_used methods
  to the Filesystem::Stat class. Thanks go to xanview for the suggestion.
* Changed File.exists? to File.exist? to avoid warnings in Ruby 2.1.x.
* The convenience methods to_mb, to_gb, etc, are now defined in Numeric
  instead of Fixnum.
* Added the to_tb method for terabytes.
* Minor updates to the gem:create and gem:install Rake tasks.

## 1.1.1 - 3-Oct-2013
* Solaris now always uses statvfs64 on Solaris for better 64-bit support.
  Thanks go to Jeff Shantz for the spot.

## 1.1.0 - 19-Jan-2013
* Converted the Windows source code to use FFI. Consequently, there is now
  a single gem rather than separate gems for Windows and Unix.
* Revamped the Windows tests.

## 1.0.0 - 11-Jan-2012
* Converted everything from C to FFI for the Unix flavors. The Windows
  source code remains untouched.

## 0.3.4 - 19-Nov-2010
* Fixed a bug where negative block counts were happening on very large
  hard drives. Thanks go to Jonas Pfenniger for the spot.
* Refactored the clean task in the Rakefile.
* Some cosmetic source code changes.

## 0.3.3 - 21-May-2010
* Added a workaround for the Sys::Filesystem#block_size member to deal with
  a bug in OS X. Thanks go to Josh Pasqualetto for the spot.

## 0.3.2 - 29-Dec-2009
* Source has been moved to github.
* Added the 'gem' task and removed build logic from the gemspec.
* Updated the install task.
* Minor correction to the manifest.
* Removed some junk build files that were inadvertently included in
  the last gem.

## 0.3.1 - 5-Aug-2009
* Now compatible with Ruby 1.9.x.
* Changed license to Artistic 2.0
* Updated the gemspec, including the explicit addition of a license and
  test-unit as a development dependency, as well as an updated description. 

## 0.3.0 - 26-Feb-2009
* Added support for OS X and FreeBSD thanks to an awesome patch by Nobuyoshi
  Miyokawa.
* Added the Filesystem.mount_point method that takes a file and returns
  the mount point it's sitting on.

## 0.2.0 - 30-Dec-2008
* Added the Filesystem.mounts method for iterating over mount or volume
  information.

## 0.1.1 - 28-Mar-2007
* Bug fix for BSD flavors.  Thanks go to Jeremy Kemper and Ole Christian
  Rynning for the spot.
* Bug fix for OS X (along the same lines as the BSD fix). Thanks go to
  Aurelian Dehay for the spot.
* Some Rdoc improvements for the C extension.
* Tweaks to the gemspec.
* Added synopsis to the README.

## 0.1.0 - 17-Nov-2006
* Initial release.  Alpha. Code is stable, but API is not.
