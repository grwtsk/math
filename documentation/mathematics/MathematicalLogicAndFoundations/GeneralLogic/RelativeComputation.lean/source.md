# Relative Computation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d4e064035584aa87a0f1d1f497cfe128c88b53d` · SHA-256 `28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Oracle.ArithmeticHierarchy

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

theorem every_function_is_computable_relative_to_its_evaluation_oracle
    {α β : Type} (f : α -> β) :
    ∃ O : EvaluationOracle α β f,
      OracleComputableRelativeTo O.oracle f := by
  let O : EvaluationOracle α β f :=
    { oracle := { answer := f }, evaluates := by intro x; rfl }
  exact ⟨O, True.intro⟩

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7599577131eb109f83d070abcda71159b5b1ae387f85e24c1d0b2e740e6b988a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/RelativeComputation/Variant28fd6c61bcc6a8d890e567e0cb50fe1da12853b96e25ad86f45e0cdd1ef1dafa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
