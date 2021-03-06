# frozen_string_literal: true

<% if namespaced? -%>
require_dependency "<%= namespaced_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
<% if controller_class_path.size > 0 -%>
class <%= controller_class_name %>Controller < <%= controller_class_path.map(&:titleize).join('::') %>::BaseController
<% else -%>
class <%= controller_class_name %>Controller < ApplicationController
<% end -%>
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]

  # GET <%= route_url %>
  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
  end

  # GET <%= route_url %>/1
  def show
  end

  # GET <%= route_url %>/new
  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
  end

  # GET <%= route_url %>/1/edit
  def edit
  end

  # POST <%= route_url %>
  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{singular_table_name}_params") %>

    if @<%= orm_instance.save %>
<% if controller_class_path.size > 0 -%>
      redirect_to <%= controller_class_path.join('_') %>_<%= singular_table_name %>_path(@<%= singular_table_name %>), notice: <%= "'#{human_name} was successfully created.'" %>
<% else -%>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully created.'" %>
<% end -%>
    else
      render :new
    end
  end

  # PATCH/PUT <%= route_url %>/1
  def update
    if @<%= orm_instance.update("#{singular_table_name}_params") %>
<% if controller_class_path.size > 0 -%>
      redirect_to <%= controller_class_path.join('_') %>_<%= singular_table_name %>_path(@<%= singular_table_name %>), notice: <%= "'#{human_name} was successfully updated.'" %>
<% else -%>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully updated.'" %>
<% end -%>
    else
      render :edit
    end
  end

  # DELETE <%= route_url %>/1
  def destroy
    @<%= orm_instance.destroy %>
<% if controller_class_path.size > 0 -%>
    redirect_to <%= controller_class_path.join('_') %>_<%= index_helper %>_path, notice: <%= "'#{human_name} was successfully destroyed.'" %>
<% else -%>
    redirect_to <%= index_helper %>_path, notice: <%= "'#{human_name} was successfully destroyed.'" %>
<% end -%>
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_<%= singular_table_name %>
      @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    end

    # Only allow a trusted parameter "white list" through.
    def <%= "#{singular_table_name}_params" %>
      <%- if attributes_names.empty? -%>
      params.fetch(:<%= singular_table_name %>, {})
      <%- else -%>
      params.require(:<%= singular_table_name %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
      <%- end -%>
    end
end
<% end -%>
