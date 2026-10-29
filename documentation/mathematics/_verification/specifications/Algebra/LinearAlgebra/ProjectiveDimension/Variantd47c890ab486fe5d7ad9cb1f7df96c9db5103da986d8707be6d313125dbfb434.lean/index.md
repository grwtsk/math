# Verification target: GRWTSK.Algebra.LinearAlgebra.ProjectiveDimension.Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8be8b6b7db30e33748ad464a0a2d358693d137df",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8be8b6b7db30e33748ad464a0a2d358693d137df`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/instance--65030e0848593d4ef9f01ab6.md) | 42 | `declaration-track:65030e0848593d4ef9f01ab61c190e0f24ffc76b7d56a756d2ea4b78bb50d002` |
| 2 | `lemma` | [localizedModule_hasProjectiveDimensionLE](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/localizedmodule-hasprojectivedimensionle--741bb04fda657906159e5f73.md) | 51 | `result-track:741bb04fda657906159e5f73db625e376d1b5c0f83abb68e7d7c0f6484638ccb` |
| 3 | `lemma` | [projectiveDimension_le_projectiveDimension_of_isLocalizedModule](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/projectivedimension-le-projectivedimension-of-islocalizedmodule--dd3145720f4e6fe6848edf84.md) | 71 | `result-track:dd3145720f4e6fe6848edf84f9c02b6e3b9f25d892f3747356b9cbc50d7b82c4` |
| 4 | `lemma` | [hasProjectiveDimensionLE_iff_forall_maximalSpectrum](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/hasprojectivedimensionle-iff-forall-maximalspectrum--f4144d1c1f3d80975ea9ea2f.md) | 90 | `result-track:f4144d1c1f3d80975ea9ea2f5f1d05582444d9ada0c71f556def32c6fe64fa51` |
| 5 | `lemma` | [hasProjectiveDimensionLE_iff_forall_primeSpectrum](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/hasprojectivedimensionle-iff-forall-primespectrum--2aa7ebbfd7a1403fa1d63cd0.md) | 128 | `result-track:2aa7ebbfd7a1403fa1d63cd0478c88c77fb122be1f4b64fc67e396677ba2c333` |
| 6 | `lemma` | [projectiveDimension_eq_iSup_localizedModule_prime](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/projectivedimension-eq-isup-localizedmodule-prime--de358c48ba19f3ec3f27847f.md) | 135 | `result-track:de358c48ba19f3ec3f27847f3bf0022d9d7efd79fff29e0b1857c7d5c64f89f9` |
| 7 | `lemma` | [projectiveDimension_eq_iSup_localizedModule_maximal](../../../../../../Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/declarations/projectivedimension-eq-isup-localizedmodule-maximal--de9ab3bd5db0b8740e836820.md) | 157 | `result-track:de9ab3bd5db0b8740e8368200b7b1ae624839facdbf82e8008a5251ac8f738d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db1ab43e197c8b480c440b8f6ac4406068a7962bd818f4bb7ac8aa6671de7e8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
