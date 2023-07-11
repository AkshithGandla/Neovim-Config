function GenerateReactComponent(component_name)
	local template = [[
import React from 'react';

const %s = () => {
    return (
        <div>
            $0
        </div>
    );
}

export default %s;
]]

	-- Replace %s placeholders in the template with the provided component_name
	local component_code = string.format(template, component_name, component_name)

	-- Insert the generated component code at the current cursor position
	vim.api.nvim_put({ component_code }, "", true, true)
end
