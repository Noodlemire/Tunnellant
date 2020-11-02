--[[
Tunnellant
Copyright (C) 2020 Noodlemire

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
--]]

core.utils = {}

function core.utils.copy(t)
	local c = {}

	for k, v in pairs(t) do
		if type(v) == "table" then
			c[k] = core.utils.copy(v)
		else
			c[k] = v
		end
	end

	return c
end

function core.utils.copy_functions(t)
	local c = {}

	for k, v in pairs(t) do
		if type(v) == "function" then
			c[k] = v
		end
	end

	return c
end

function core.utils.distance(p1, p2)
	return math.sqrt((p2.x - p1.x)^2 + (p2.y - p1.y)^2)
end

function core.utils.round(n)
	return math.floor(tonumber(n) + 0.5)
end
