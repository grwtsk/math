# Verification target: Euclidean Domain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1c10230efb09406e60ac2323b624f1dc319c57",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EuclideanDomain/Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EuclideanDomain.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EuclideanDomain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1c10230efb09406e60ac2323b624f1dc319c57`.

Source path: `GRWTSK/Algebra/EuclideanDomain/Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EuclideanDomain/Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [left_div_gcd_ne_zero](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/left-div-gcd-ne-zero.md) | 32 | `result-track:a008673f9e54e88d0127d38e25f3a00ecbcc71694ca11421cb4cf6a42fc5a38d` |
| 2 | `theorem` | [right_div_gcd_ne_zero](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/right-div-gcd-ne-zero.md) | 39 | `result-track:a924624b310462d60af826d16a9f6a24ebe070bb6cd7828a05ac7dd01e49b10f` |
| 3 | `theorem` | [isCoprime_div_gcd_div_gcd](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/iscoprime-div-gcd-div-gcd.md) | 46 | `result-track:3085af73b40c2fe5e003815315d041338a06dc9443638a18c846a403e201b4ce` |
| 4 | `def` | [gcdMonoid](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/gcdmonoid.md) | 60 | `declaration-track:06139c8e9fe4cfdc9bfe9f80759f2251d946730b6dae4deae697cad104c3f87b` |
| 5 | `theorem` | [span_gcd](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/span-gcd.md) | 72 | `result-track:d5f8599e8b0a60ca725b302079c363db2665338e592b300c9559cf8d77d57718` |
| 6 | `theorem` | [gcd_isUnit_iff](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/gcd-isunit-iff.md) | 77 | `result-track:69edbf0119c396edac279b0adab8043ef2575c99cec5f478bd70b589a0c2a7fb` |
| 7 | `theorem` | [isCoprime_of_dvd](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/iscoprime-of-dvd.md) | 82 | `result-track:e2c5e0ea9cea31691ef24ed5a4df7ad96558263d9525970e4a04f89093e5e24f` |
| 8 | `theorem` | [dvd_or_coprime](../../../../CommutativeAlgebra/EuclideanDomain.lean/declarations/dvd-or-coprime.md) | 89 | `result-track:4aeba0e5112d2fe71656b74e0687b640430db0df5ca4c7991d47e1bf0760b49f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1333b31e987d8c3d9801b745936c6f6c1661bcf66964b5e55805b09813c98a64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/EuclideanDomain/Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513.lean","GRWTSK/_verification/specifications/Algebra/EuclideanDomain/Variant98f31f48f81363469217440e89674d6aec806874287e1af6130bd9de1141f513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
