class TenantsController < ApplicationController
  def index
    tenants = Tenant.all
    render json: tenants, status: :ok
  end

  def show
    tenant = Tenant.find(params[:id])
    render json: tenant, status: :found
  end

  def create
    tenant = Tenant.create!(tenant_params)
    render json: tenant, status: :created
  end

  def update
    tenant = Tenant.find(params[:id])
    tenant.update!(tenant_params)
    render json: tenant, status: :ok
  end

  def destroy
    tenant = Tenant.find(params[:id])
    tenant.destroy
    render json: {}, status: :no_content
  end

  private

  def tenant_params
    params.permit(:name, :age)
  end
end
