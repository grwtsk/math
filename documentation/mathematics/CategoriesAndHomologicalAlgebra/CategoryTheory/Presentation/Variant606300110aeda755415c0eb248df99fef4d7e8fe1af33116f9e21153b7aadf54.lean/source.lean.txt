import Presentation.Syntax
import Presentation.Binary
import Presentation.Semantics
import Presentation.Realization
import Presentation.Audit
import Presentation.Spine
import Presentation.CoolingDissipation
import Presentation.FiniteSearch
import Presentation.PrismaticShadow
import Presentation.NullInterface
import Presentation.ClosureNetwork
import Presentation.AstLabeling
import Presentation.Expressiveness
import Presentation.SelfAnneal
import Presentation.SelfAnnealedProjectionNetwork
import Presentation.SpectralFaceProjection
import Presentation.CanvasProjection
import Presentation.ReasoningSurface

/-!
What is formalized:
The Presentation root exposes pure syntax, the binary tree bijection, semantic
evaluation, presentation certificates, the null-interface boundary, local audit predicates, pure
Presentation-indexed closure networks, compile-time AST labeling certificates,
and universal
finite spine presentations for RH-facing, trace-formula, Langlands, and
prismatic-comparison claim architectures, plus the finite certificate theorem
for prismatic-spined generated shadows.  Presentation expressiveness is routed
through an explicit machine semantics and simulation witness. Compile-time
Presentation self-annealing is routed through finite reducer traces and
optimality certificates, with compile-time heat accounting emitted as a finite
ledger of witnessed metadata. Application governance is represented by an
explicit reasoning-surface certificate, a constructive finite proof-section
gluing contract, and witnessed semantic flatness on compatible closed cycles.

What is certificate-gated:
Any analytic, arithmetic, or spectral theorem using Presentation syntax must
provide separate checked hypotheses or certificates. Spine presentations are
still not theorem authority: theorem-facing use requires an explicit
`SpineRealizationCertificate`, and analytic use is additionally routed through
the `AnalyticNumber` boundary calculus by the separate adapter. Raw syntax
does not own computational expressiveness; interpreter authority is supplied by
realization metadata and witnesses.
Compile-time organization reports, generated labels, hashes, and rename plans
are finite metadata and not theorem authority. Compile-time heat accounting
adds and redistributes finite metadata heat only through witnessed reducer
records.
Reducer-network nodes are pure Presentation-indexed closures only when their
effects are returned as explicit output data and every reducer fiber edge is
witnessed.
Request-time spectral face projections are represented as Presentation-indexed
node-fiber steps over a compile-time self-annealed finite network.
The reasoning-surface theorems are structural certificate theorems; they do not
promote finite evidence, generated proposals, or interface state to theorem
authority.

What is not claimed:
Presentation syntax is not theorem authority and does not prove BSD, RH,
Hilbert-Pólya, Connes trace formulas, Langlands functoriality, prismatic
comparison, spectral geometry, spectral triples, Turing completeness, machine
semantics, or external comparison theorems.

Primary mathematical source:
Internal Presentation design notes.
-/
