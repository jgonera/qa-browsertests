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
Given(/^I am at Log in page$/) do
  visit LoginPage
end
Then(/^Log in element should be there$/) do
  on(LoginPage).login_element.should exist
end
Then(/^Log in page should open$/) do
  @browser.url.should match Regexp.escape("Special:UserLogin")
end
Then(/^Password element should be there$/) do
  on(LoginPage).password_element.should exist
end
Then(/^Username element should be there$/) do
  on(LoginPage).username_element.should exist
end
