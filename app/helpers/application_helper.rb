module ApplicationHelper
  def bootstrap_alert_class(type)
    case type.to_s
    when "error" then "danger"
    when "success" then "success"
    else
      "info"
    end
  end

  def bootstrap_alert_title(type)
    case type.to_s
    when "error" then "Falha"
    when "success" then "Sucesso!"
    else
      "Atenção!"
    end
  end

  def bootstrap_form_errors(form, field_name)
    resource = form_resource(form)
    if form_has_error?(form, field_name)
      html = "<div class='invalid-feedback d-block'>"
      html << "<ul class='list-unstyled'>"
      resource&.errors[field_name.to_sym].each do |error|
        html << "<li>#{error.capitalize}</li>"
      end
      html << "</ul>"
      html << "</div>"
      raw html
    end
  end

  def bootstrap_form_error_class(form, field_name)
    form_has_error?(form, field_name) ? "is-invalid" : ""
  end

  def form_has_error?(form, field_name)
    resource = form_resource(form)
    resource&.errors[field_name.to_sym].present?
  end

  def form_resource(form)
    if form.instance_of?(ActionView::Helpers::FormBuilder)
      form.object
    else
      form
    end
  end
end
