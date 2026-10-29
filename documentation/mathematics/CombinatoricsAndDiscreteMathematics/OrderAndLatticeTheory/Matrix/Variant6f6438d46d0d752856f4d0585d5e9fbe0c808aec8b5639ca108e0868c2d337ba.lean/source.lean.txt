import Boolean.Matrix
import Boolean.Matrix.Operations
import Boolean.Matrix.Ext
import Boolean.Matrix.Encoding
import Boolean.Matrix.Count
import Boolean.Matrix.Relation
import Boolean.Matrix.Warshall
import Boolean.Matrix.Lattice

/-!
# Boolean matrices

Formalized: Boolean matrix objects, Boolean matrix operations, Warshall
closure, and lattice operations.

Certificate-gated: all flow, spectral, trace, and BSD interpretations are
handled by their own root modules.

Not claimed: a Boolean matrix alone is not a flow certificate, spectral theorem,
or BSD datum.
-/
