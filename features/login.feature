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
Feature: Log in

  Background:
    Given I am at Log in page

  Scenario: Log in page
    Then Log in page should open
      And Username element should be there
      And Password element should be there
      And Log in element should be there

