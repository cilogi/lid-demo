// Copyright (c) 2010 Tim Niblett All Rights Reserved.
//
// File:        RouteModule.java  (05-Oct-2010)
// Author:      tim
// $Id$
//
// Copyright in the whole and every part of this source file belongs to
// Tim Niblett (the Author) and may not be used,
// sold, licenced, transferred, copied or reproduced in whole or in
// part in any manner or form or in or on any media to any person
// other than in accordance with the terms of The Author's agreement
// or otherwise without the prior written consent of The Author.  All
// information contained in this source file is confidential information
// belonging to The Author and as such may not be disclosed other
// than in accordance with the terms of The Author's agreement, or
// otherwise, without the prior written consent of The Author.  As
// confidential information this source file must be kept fully and
// effectively secure at all times.
//


package com.cilogi.liddemo.guice;

import com.google.apphosting.utils.servlet.SessionCleanupServlet;
import com.google.common.collect.ImmutableMap;
import com.google.inject.servlet.ServletModule;
import freemarker.ext.servlet.FreemarkerServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RouteModule extends ServletModule {
    @SuppressWarnings({"unused"})
    static final Logger LOG = LoggerFactory.getLogger(RouteModule.class.getName());


    public RouteModule() {}

    @Override
    protected void configureServlets() {
        serve("/_ah/sessioncleanup").with(SessionCleanupServlet.class);
        serve("*.ftl").with(FreemarkerServlet.class, ImmutableMap.of(
            "TemplatePath", "classpath:ftl"
        ));
    }
}
