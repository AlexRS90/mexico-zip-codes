class Api::V1::ZipCodesController < ApplicationController
  def show
    zip_code = Code.where(zip_code: params[:zip_code]).pluck(
      :zip_code,
      :locality,
      :federal_entity,
      :settlements,
      :municipality
    ).map do |zip_code1, locality, federal_entity, settlements, municipality|
      {
        zip_code: zip_code1,
        locality: locality,
        federal_entity: federal_entity,
        settlements: settlements,
        municipality: municipality
      }
    end
    if zip_code.any?
      render json: { status: 'success', data: zip_code }, status: 201
    else
      render json: {}, status: :not_found
    end
  end
end
