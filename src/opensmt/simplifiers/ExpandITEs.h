/*********************************************************************
Author: Roberto Bruttomesso <roberto.bruttomesso@gmail.com>

OpenSMT -- Copyright (C) 2009, Roberto Bruttomesso

OpenSMT is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

OpenSMT is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with OpenSMT. If not, see <http://www.gnu.org/licenses/>.
*********************************************************************/

#ifndef EXPAND_ITES_H
#define EXPAND_ITES_H

#include "common/Global.h"
#include "common/Otl.h"
#include "egraph/Egraph.h"

class Egraph;
class Enode;
struct SMTConfig;

class ExpandITEs
{
public:

  ExpandITEs( Egraph & egraph_, SMTConfig & /* config_ */ )
   : egraph  ( egraph_ )
  // , config  ( config_ )
  { }

  virtual ~ExpandITEs( ) { }

  Enode * doit ( Enode * ); // Main routine

private:

  Egraph &    egraph;       // Reference to Egraph
//  SMTConfig & config;       // Reference to Config
};

#endif
