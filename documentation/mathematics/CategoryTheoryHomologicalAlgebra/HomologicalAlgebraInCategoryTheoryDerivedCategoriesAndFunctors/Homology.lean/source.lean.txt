import Surface.Homology.ChainComplex
import Surface.Homology.ChainMap
import Surface.Homology.Basic
import Surface.Homology.Betti
import Surface.Homology.QuasiIsomorphism
import Surface.Homology.Coverage
import Surface.Homology.FlowStability
import Surface.Homology.FiniteOS.Basic
import Surface.Homology.FiniteOS.Authority
import Surface.Homology.FinitePrismaticSurfaceModel
import Surface.Homology.KakeyaTubeCover
import Surface.Homology.OrientedFlatness
import Surface.Homology.Annals
import Surface.Homology.ConeIndex

/-!
# Surface homology layer

Formalized: finite chain-complex interfaces, finite proof-carrying homological
syntax, prismatic-surface wrappers, Kakeya tube-cover structure, and
Prop-valued oriented-flatness relaxation certificates for dyadic-boundary
transport.

Certificate-gated: Prismatic Cohomology comparisons, Kakeya estimates,
oriented flatness, normalized transport, boundary gluing, and any
analytic/topological strengthening beyond finite structural gates.

Not claimed: finite homological syntax is not a replacement for Prismatic
Cohomology, sheaf cohomology, or Kakeya analysis.
-/
