// Copyright (c) 2011 Tim Niblett All Rights Reserved.
//
// File:        BindingModule.java  (12-Oct-2011)
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


import com.cilogi.lid.servlet.login.DefaultLoginAction;
import com.cilogi.lid.servlet.login.ILoginAction;
import com.cilogi.lid.util.ISendEmail;
import com.cilogi.lid.util.SendLoginEmail;
import com.google.apphosting.utils.servlet.SessionCleanupServlet;
import com.google.inject.AbstractModule;
import com.google.inject.Scopes;
import freemarker.ext.servlet.FreemarkerServlet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public class BindingModule extends AbstractModule {
    @SuppressWarnings({"unused"})
    static final Logger LOG = LoggerFactory.getLogger(BindingModule.class);

    public BindingModule() {}

    @Override
    protected void configure() {
        bind(FreemarkerServlet.class).in(Scopes.SINGLETON);
        bind(SessionCleanupServlet.class).in(Scopes.SINGLETON);
        bind(ILoginAction.class).to(DefaultLoginAction.class);

    }
}
