/*
	server/gamemodes/madman.qc

	Core logic for MADMAN.

	Copyright (C) 2021-2025 NZ:P Team

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

	See the GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to:

		Free Software Foundation, Inc.
		59 Temple Place - Suite 330
		Boston, MA  02111-1307, USA

*/

void() Gamemode_Madman_Init =
{
};

float(float current_count, float current_round, float round_type, float current_player_count) Gamemode_Madman_GetZombieTotalForRound =
{
    if (round_type != 1)
        return current_count;

    return rint(current_count * 1.2);
};

float(float current_health, float current_round) Gamemode_Madman_GetZombieHealthForRound =
{
    return current_health * 1.15;
};
