// NoteFlier
// Copyright (C) 2022 ItsTheGuy
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import Foundation
import SQLite

class Database {
    var connection: Connection
    
    init() {
        connection = try! Connection("\((FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] as NSURL).appendingPathComponent("./theDBThing.sqlite3")!)")
        do {
            try connection.run(Data.Recording.dbTable.create { builder in
                builder.column(Data.Recording.name2Show, unique: true)
                builder.column(Data.Recording.path, unique: true)
            })
        } catch {}
    }
}