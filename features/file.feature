#
# This file is subject to the license terms in the LICENSE file found in the
# qa-browsertests top-level directory and at
# https://git.wikimedia.org/blob/qa%2Fbrowsertests/HEAD/LICENSE. No part of
# qa-browsertests, including this file, may be copied, modified, propagated, or
# distributed except according to the terms contained in the LICENSE file.
#
# Copyright 2012-2013 by the Mediawiki developers. See the CREDITS file in the
# qa-browsertests top-level directory and at
# https://git.wikimedia.org/blob/qa%2Fbrowsertests/HEAD/CREDITS
#
@en.wikipedia.beta.wmflabs.org @test2.wikipedia.org
Feature: File

 Scenario: Anonymous goes to file that does not exist
   Given I am at file that does not exist
   Then page text should contain No file by this name exists.

 @login
 Scenario: Logged-in user goes to file that does not exist
   Given I am logged in
     And I am at file that does not exist
   Then page text should contain No file by this name exists, but you can upload it.
