# Verification target: Mv Polynomial Localization Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0870212c73badb65999f22c6376e4e7257d1d476",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0870212c73badb65999f22c6376e4e7257d1d476`.

Source path: `GRWTSK/Algebra/Localization/Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isLocalization](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/islocalization.md) | 52 | `declaration-track:0e9f6278646748801fcfeb0c3c5b7167176ae6e9c2c5b0e6588f724ac25dc6a1` |
| 2 | `lemma` | [isLocalization_C_mk'](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/islocalization-c-mk.md) | 56 | `result-track:d65966ecfe84b6804e3389c19f4ac5aa5972caacab731afb2062be7f16333abd` |
| 3 | `def` | [auxHom](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/auxhom.md) | 74 | `declaration-track:64d6d781346bc978b6890901c17a9878b3e7fae4964e3c143464681785e73a7e` |
| 4 | `lemma` | [auxHom_mk](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/auxhom-mk.md) | 87 | `result-track:b89b91dea4066e9cecf98c770a4cb2aec50bf86154e82b28dc739b0f63764d3c` |
| 5 | `def` | [auxInv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/auxinv.md) | 93 | `declaration-track:aa30b5a12b2cbfeefc125c1a1fe636ec894310c7f1b30b193df8256671542acd` |
| 6 | `lemma` | [auxHom_auxInv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/auxhom-auxinv.md) | 103 | `result-track:3d47678e616717512b5d68e66656aaa213e289c1ab37a6f182eb82936fa1621e` |
| 7 | `lemma` | [auxInv_auxHom](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/auxinv-auxhom.md) | 108 | `result-track:1b652c95ebc43b1e5445294f2ef9ea2bd256be933903dcfa1ec774035e0139c9` |
| 8 | `def` | [mvPolynomialQuotientEquiv](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/mvpolynomialquotientequiv.md) | 124 | `declaration-track:e67e0124aa7989cf403363e484c708a672bd1d12eb943f227da75b2131cd4fa4` |
| 9 | `lemma` | [mvPolynomialQuotientEquiv_apply](../../../../CommutativeAlgebra/MvPolynomialLocalizationNamespacedPublic.lean/declarations/mvpolynomialquotientequiv-apply.md) | 137 | `result-track:2d09d4d2efb4e60c6b8f9dec43e1ee281ef6e0316352fcc6a1047ea13e277d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73422d4988d4bb73966e2c6ab928f172eb8aef93ad0f919cc66373e220231875 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variant50fc5d8f135d84ff4ececdd95580c1a0640489a286bc4b8bde490c7e33c81309.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
