import Noeoueue.Profile

namespace Noeoueue

inductive AdmissionStatus | accepted | rejected | unresolved
  deriving DecidableEq, Repr

inductive Authority | source | retrieval | projection | leanKernel | filesystem
  deriving DecidableEq, Repr

/-- `type-memory://noeoueue/source-view-authority@1` -/
theorem projection_has_no_source_authority : Authority.projection != Authority.source := by decide

/-- `type-memory://noeoueue/filesystem-nonauthority@1` -/
theorem filesystem_has_no_kernel_authority : Authority.filesystem != Authority.leanKernel := by decide

end Noeoueue
