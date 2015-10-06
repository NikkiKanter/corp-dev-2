module ApplicationHelper
  def sprite_tag(name, opts={})
    image_tag "s.gif", opts.merge(
      "class" => "#{opts[:class]} #{name}",
      "alt" => (opts[:alt] || "")
    )
  end

  def body_class
    @body_class ||= "#{controller.controller_name.dasherize} #{controller.controller_name.dasherize}-#{controller.action_name.dasherize}"
  end
end
