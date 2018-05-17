DiscourseEvent.on(:custom_wizard_ready) do
  CustomWizard::Builder.add_step_handler('wizard_id') do |builder|
    updater = builder.updater

    if builder.updater && builder.updater.step && builder.updater.step.id === 'step_id'
      input = builder.updater.fields.to_h

      if builder.submissions.empty?
        builder.submissions.push({})
      end

      builder.submissions[index_of_step]["field_id_to_fill"] = input['field_id_of_value']
    end
  end
end