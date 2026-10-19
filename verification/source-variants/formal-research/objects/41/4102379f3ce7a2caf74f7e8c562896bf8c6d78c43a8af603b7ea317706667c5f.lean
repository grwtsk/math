import Surface.Hilbert.Basic
import Surface.Hilbert.Operator
import Surface.Hilbert.SelfAdjoint
import Surface.Hilbert.TraceClass
import Surface.Hilbert.SpectralMeasure
import Surface.Hilbert.TraceFormula
import Surface.Hilbert.PrismaticEmbedding
import Surface.Hilbert.Annals

/-!
# Surface Hilbert interfaces

What is formalized:
Hilbert-space carriers, dense domains, linear operators, self-adjointness
certificates, trace-class certificates, spectral-measure interfaces,
conditional trace-formula cores, and prismatic Hilbert embedding interfaces.

What is certificate-gated:
Analytic completeness, self-adjointness, trace-class status, spectral theorem
applications, trace/spectral/geometric side readiness, normalization
compatibility, and prismatic comparison inputs.

What is not claimed:
No Hilbert--Pólya theorem, Connes trace formula, zeta spectral correspondence,
or prismatic comparison theorem is proved by this root.

Primary mathematical source:
Internal Surface Hilbert interface, designed to receive prismatic cohomology
data from Bhatt--Scholze-style `Surface.Prismatic` modules.
-/
