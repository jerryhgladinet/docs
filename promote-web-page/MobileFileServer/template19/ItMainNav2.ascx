<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ItMainNav.ascx.cs" Inherits="CentreStack.Controls.ItMainNav" %>


<ul class="rd-navbar-nav">



    <li><a href="javascript:void(0)"><span>Solutions</span></a>
        <div class="rd-navbar-megamenu">
            <!-- Responsive-tabs-->
            <div class="responsive-tabs responsive-tabs-classic" data-type="horizontal">
                <h3 class="d-none  d-lg-inline d-xl-inline" style="text-transform: uppercase">INITIATIVES</h3>
                <ul class="resp-tabs-list tabs-1 text-center tabs-group-default" data-group="tabs-group-default">

                    <li style="-webkit-text-fill-color: initial; text-transform: none;">Secure File Sharing <span class="novi-icon mdi mdi-arrow-right text-mantis d-none d-lg-inline d-xl-inline"></span>
                        <br />
                        <span style="font-weight: 300;">Secure private cloud file sharing</span></li>
                    <li style="-webkit-text-fill-color: initial; text-transform: none;">File Share Synchronization  <span class="novi-icon mdi mdi-arrow-right text-mantis d-none d-lg-inline d-xl-inline"></span>
                        <br />
                        <span style="font-weight: 300;">Sync file shares remotely</span></li>
                    <li style="-webkit-text-fill-color: initial; text-transform: none;">Self Hosted Dropbox <span class="novi-icon mdi mdi-arrow-right text-mantis d-none d-lg-inline d-xl-inline"></span>
                        <br />
                        <span style="font-weight: 300;">Self host a dropbox alternative</span></li>
                    <li style="-webkit-text-fill-color: initial; text-transform: none;">Cloud Backup <span class="novi-icon mdi mdi-arrow-right text-mantis d-none d-none d-lg-inline d-xl-inline"></span>
                        <br />
                        <span style="font-weight: 300;">Backup file shares and user folders</span></li>
                    <li id="menucfs" style="-webkit-text-fill-color: initial; text-transform: none;">Cloud File Server<span class="novi-icon mdi mdi-arrow-right text-mantis d-none d-lg-inline d-xl-inline"></span>
                        <br />
                        <span style="font-weight: 300;">Remote and mobile access</span></li>
                </ul>
                <div class="resp-tabs-container text-left tabs-group-default" data-group="tabs-group-default">
                    
                    <div class="row">
                        <div class="col-xl-2 d-none  d-lg-block d-xl-block">
                            <a class="btn btn-link" href="/secure-file-sharing/" role="button">Secure File Sharing</a>
                        </div>
                        <ul class="col-xl-3">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-deluge">Feature Highlights</span></h6>
                            </li>
                            <li><a href="/secure-file-sharing/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">co-editing and co-authoring</span></a></li>
                            <li><a href="/secure-file-sharing/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">outlook integration</span></a></li>
                            <li><a href="/secure-file-sharing/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">Link sharing</span></a></li>
                            <li><a href="/secure-file-sharing/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">granular permission</span></a></li>
                            <li><a href="/secure-file-sharing/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">secure data room</span></a></li>


                        </ul>
                        <ul class="col-xl-5">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-deluge">Use Cases</span></h6>
                            </li>
                            <li>
                                <a href="/use-case/secure-data-transfer.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">Secure File Sharing with Granular Permissions</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">all-in-one secure file sharing among local, remote personnel and external clients and partners</span>
                                </a>
                            </li>

                            <li>
                                <a href="/use-case/transfer-large-file.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">Link Sharing for Sending Large Files</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">convert large files into web links for easy web based sharing via email</span>
                                </a>
                            </li>

                            <li>
                                <a href="/aws/">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">amazon s3 for secure file sharing</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">turn amazon s3 into a secure file sharing solution</span>
                                </a>
                            </li>

                        </ul>



                    </div>
                    <div class="row">
                        <div class="col-xl-2 d-none  d-lg-block d-xl-block">
                            <a class="btn btn-link" href="/file-share-sync/" role="button">File Share Synchronization</a>
                        </div>
                        <ul class="col-xl-3">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-success">Feature Highlights</span></h6>
                            </li>
                            <li><a href="/file-share-sync/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">synchronize permissions </span></a></li>
                            <li><a href="/file-share-sync/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">synchronize user identity </span></a></li>
                            <li><a href="/file-share-sync/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">on-demand synchronization </span></a></li>
                            <li><a href="/file-share-sync/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">synchronize time stamp</span></a></li>
                            <li><a href="/file-share-sync/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">binary differential synchronization</span></a></li>


                        </ul>
                        <ul class="col-xl-5">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-success">Use Cases</span></h6>
                            </li>
                            <li>
                                <a href="/use-case/multi-site-sync.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">File shares sync among multiple branch offices</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">ubiquitous access to file server shares regardless of branch office or head quarter locations</span>
                                </a>
                            </li>

                            <li>
                                <a href="/use-case/migrate-server-to-cloud.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">Migrate local file server to cloud seamlessly</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">hybrid local and cloud two-way sync file server shares and optionally get rid of file server later on</span>
                                </a>
                            </li>

                        </ul>



                    </div>
                    <div class="row">
                        <div class="col-xl-2 d-none  d-lg-block d-xl-block">
                            <a class="btn btn-link" href="/self-hosted-dropbox/" role="button">Self Hosted Dropbox</a>
                        </div>
                        <ul class="col-xl-3">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-dark">Feature Highlights</span></h6>
                            </li>
                            <li><a href="/self-hosted-dropbox/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">simple install</span></a></li>
                            <li><a href="/self-hosted-dropbox/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">easy scale</span></a></li>
                            <li><a href="/self-hosted-dropbox/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">multi-tenant ready</span></a></li>
                            <li><a href="/self-hosted-dropbox/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">white label branding</span></a></li>
                            <li><a href="/self-hosted-dropbox/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">storage agnostic</span></a></li>


                        </ul>
                        <ul class="col-xl-5">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-dark">Use Cases</span></h6>
                            </li>
                            <li>
                                <a href="/use-case/white-label-file-sharing.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">File shares &amp; cloud storage as-a-service</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">setup a self hosted storage and file sharing solution in your data center for your clients or employees</span>
                                </a>
                            </li>

                            <li>
                                <a href="/compare/dropbox.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">CentreStack vs Dropbox </span><span class="badge badge-primary">Battle Card</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">CentreStack to Dropbox Comparison</span>
                                </a>
                            </li>

                        </ul>



                    </div>
                    <div class="row">
                        <div class="col-xl-2 d-none  d-lg-block d-xl-block">
                            <a class="btn btn-link" href="/cloud-backup/" role="button">Cloud Backup</a>
                        </div>
                        <ul class="col-xl-3">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-danger">Feature Highlights</span></h6>
                            </li>
                            <li><a href="/cloud-backup/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">file shares backup</span></a></li>
                            <li><a href="/cloud-backup/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">remote user backup</span></a></li>
                            <li><a href="/cloud-backup/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">snapshot backup</span></a></li>
                            <li><a href="/cloud-backup/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">revert to date</span></a></li>
                            <li><a href="/cloud-backup/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">storage agnostic</span></a></li>


                        </ul>
                        <ul class="col-xl-5">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-danger">Use Cases</span></h6>
                            </li>
                            <li>
                                <a href="/use-case/local-backup-server.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">Turn CentreStack into a backup server</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">CentreStack server becomes a backup server for file server shares and remote user's folders</span>
                                </a>
                            </li>

                            <li>
                                <a href="/use-case/self-hosted-backup.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">Setup a complete self controlled backup solution</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">leverage the storage agnostic feature to put the backup target storage location under 100% control</span>
                                </a>
                            </li>

                        </ul>



                    </div>
                    <div class="row">
                        <div class="col-xl-2 d-none d-lg-block d-xl-block">
                            <a class="btn btn-link" href="/Cloudserver/" role="button">Cloud File Server</a>

                        </div>
                        <ul class="col-xl-3">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-primary">Feature Highlights</span></h6>
                            </li>
                            <li><a href="/cloud-file-server/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">cloud mapped drive</span></a></li>
                            <li><a href="/cloud-file-server/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">on-demand sync</span></a></li>
                            <li><a href="/cloud-file-server/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">file locking</span></a></li>
                            <li><a href="/cloud-file-server/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">granular folder permission</span></a></li>
                            <li><a href="/cloud-file-server/"><span class="novi-icon mdi mdi-star-circle text-carrot rd-navbar-icon d-none  d-lg-inline d-xl-inline"></span><span class="text-middle" style="text-transform: capitalize;">active directory integration</span></a></li>


                        </ul>
                        <ul class="col-xl-5">
                            <li>

                                <h6><span style="margin: 16px;" class="badge badge-primary">Use Cases</span></h6>
                            </li>
                            <li>
                                <a href="/use-case/remote-access.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">remote access to file shares without VPN</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">local on premise file server remote and mobile access without using VPN</span>
                                </a>
                            </li>

                            <li>
                                <a href="/use-case/mobile-access.aspx">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">mobile device access to hosted file server</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">compliments remote desktop service with easy access to files from mobile devices</span>
                                </a>
                            </li>

                            <li>
                                <a href="/azure/">

                                    <span class="text-middle d-none  d-lg-inline d-xl-inline">microsoft azure for cloud file server</span>
                                    <br class="d-none  d-lg-inline d-xl-inline" />
                                    <span class="novi-icon  mdi mdi-arrow-right text-picton-blue"></span>
                                    <span style="text-transform: none; font-weight: 400;">leverage microsoft azure for file server secure remote access</span>
                                </a>
                            </li>

                        </ul>



                    </div>


                </div>
            </div>
        </div>

    </li>
    <li><a href="/CaseStudies/"><span>Customers</span></a>

    </li>

    <li><a href="javascript:void(0)"><span>Resources</span></a>
        <ul class="rd-navbar-dropdown">
            <li><a href="https://gladinet.zendesk.com/hc"><i class="novi-icon fa fa-support text-gray" style="margin-right: 8px;"></i>Support</a>

            </li>
            <li><a href="/documentation/"><i class="novi-icon fa fa-book text-gray" style="margin-right: 8px;"></i>Documentation</a>

            </li>
            <li><a href="tel:+1-888-955-6656"><i class="novi-icon fa fa-phone text-gray" style="margin-right: 8px;"></i>1.888.955.6656</a></li>
            <li><a href="mailto:ticket@gladinet.com"><i class="novi-icon mdi mdi-email text-gray" style="margin-right: 8px;"></i>ticket@gladinet.com</a></li>
            <li><a href="/about/"><i class="novi-icon fa fa-info-circle text-gray" style="margin-right: 8px;"></i>About US</a></li>
        </ul>


    </li>



    <li>
        <a href="https://www.centrestack.com/management/partnerloginpage.aspx"><span class="btn btn-primary btn-xs btn-ellipse btn-icon btn-icon-left" style="margin-top: -3px;"><i class="novi-icon mdi mdi-login"></i>Login</span></a>

    </li>

</ul>

