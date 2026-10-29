# Laplace Square Algebra — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ff575eed12d4ae7feebba8e3504e284d2bb3ac6` · SHA-256 `646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic
example (A Z sa sz z B : ℂ) (ha : sa ≠ 0) (hz : sz ≠ 0)
    (hA : A ≠ 0) (hZ : Z ≠ 0) (hAsqrt : sa ^ 2 = A) (hZsqrt : sz ^ 2 = Z) :
    ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) *
      ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) = A / Z * (z ^ 2 - 1 / 4) ^ 2 * B ^ 2 := by
  field_simp [ha, hz, hA, hZ]
  rw [hAsqrt, hZsqrt]
  ring
example (A : ℝ) (ρ : ℂ) : (((A : ℂ) * (ρ - 1 / 2)).re) = A * (ρ.re - 1 / 2) := by simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7324ca6cd04f32fbb86e43a42a9c1bef4832afe0a4e9239a10b8e06ed28f6fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baaLaplaceSquareAlg/Variant646b54e9141a7b63aee6f85cda1dc2e49d8feaa4dfabb8f51d025376b9b60baa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
