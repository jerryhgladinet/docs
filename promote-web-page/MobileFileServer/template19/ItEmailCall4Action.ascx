<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ItEmailCall4Action.ascx.cs" Inherits="CentreStack.template19.ItEmailCall4Action" %>
<div class="group group-xl offset-top-20 offset-sm-top-50">

    <form action="https://www.centrestack.com/management/signup/" method="get">
        <div class="form-group">

            <div style="text-align: left; margin-bottom: 4px;">
                <label class="input-sm"><i class="novi-icon mdi mdi-cloud-circle text-mantis"></i>Try CentreStack free in the cloud!</label>
            </div>
            <div class="form-inline">

                <input class="form-control " style="min-width: 220px; background-color: white;" placeholder="Your Work Email" type="email" name="email" data-constraints="@Required @Email" id="WorkEmail">

                <button class="btn btn-primary btn-block-xs-only" type="submit">Get Started</button>

            </div>
            <div>
                <div id="ErrMsg" style="display: none;" class="alert alert-danger" role="alert">
                    Please Use Your Work Email.
                </div>
            </div>
        </div>
        <div class="form-output" id="form-subscribe-footer"></div>

    </form>

</div>
