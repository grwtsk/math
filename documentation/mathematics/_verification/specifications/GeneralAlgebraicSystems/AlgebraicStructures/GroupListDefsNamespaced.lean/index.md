# Verification target: Group List Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c182ca728b3e7064b9856d9f64cd8d428a112c81",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd28ed76f40d6d888f57740c20e67f66a6b195311d6bcfa9de25c9c8d3ed4298b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c182ca728b3e7064b9856d9f64cd8d428a112c81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd28ed76f40d6d888f57740c20e67f66a6b195311d6bcfa9de25c9c8d3ed4298b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd28ed76f40d6d888f57740c20e67f66a6b195311d6bcfa9de25c9c8d3ed4298b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod.md) | 33 | `declaration-track:24748d7fe121f9283b1e96122b46601b491bf75de235177976d1049103ac347f` |
| 2 | `def` | [alternatingSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/alternatingsum.md) | 37 | `declaration-track:364854298c1bcc82f5cf7e25ff89228a39f705b4164b187fa388ce25226c48a1` |
| 3 | `def` | [alternatingProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/alternatingprod.md) | 44 | `declaration-track:2949c493a2bbf93a0b07aaed3f7a2d3bbd5a7609d44b1e1d05aa67241e2916be` |
| 4 | `theorem` | [prod_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-nil.md) | 56 | `result-track:81480be4d8f4136abd468b1a21a5d9dfd3417115d9bca9f41d5b1639822bd352` |
| 5 | `theorem` | [prod_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-cons.md) | 60 | `result-track:eaf87d4bd24b56acf6860927e545790fff7a9cba0994fddd19f8d0b1fd1e68bc` |
| 6 | `lemma` | [prod_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-induction.md) | 63 | `result-track:3ce0fde1bd8cbdea1421b15d4aed84be9854b0a2949b21bd033f2bfd965af520` |
| 7 | `theorem` | [prod_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-singleton.md) | 80 | `result-track:69d8f21c4605f9c840c78f14a02ed1a48b005770cd282871e5b602a1a3919a43` |
| 8 | `theorem` | [prod_one_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-one-cons.md) | 84 | `result-track:9ddc8e850558acf37cd2c28bb6eb439ba27219887a340fdb7c96bb3475ebaa24` |
| 9 | `theorem` | [prod_map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-map-one.md) | 88 | `result-track:9271deb625445dab0f60447ff457c23e722066ca916f8c385e7e648e4a4d6618` |
| 10 | `theorem` | [prod_eq_foldr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-eq-foldr.md) | 101 | `result-track:812fc6e551fc9d1cfca71cddd352c76bf9f03ec24013dc10f8ad1bad572b26e8` |
| 11 | `theorem` | [prod_replicate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-replicate.md) | 104 | `result-track:a6b1904aee10a2520defc1d7f69fc42f017e34c33735672dd4c5e6f69e88a591` |
| 12 | `theorem` | [prod_eq_pow_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-eq-pow-card.md) | 110 | `result-track:a072b6efd3245544536b98e6509382b25ea94e9fa7bd3d314629ce9d41e42cb8` |
| 13 | `theorem` | [prod_hom_rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListDefsNamespaced.lean/declarations/prod-hom-rel.md) | 114 | `result-track:4c195d6b94440a31c494f430fe2bb2f3c5fee8047c39bccb1ed0fb1955cf7962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90441fd7cb2fc8a7a318059bd7876b605b8f602d7510f941e0fd3ff9646b343e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd28ed76f40d6d888f57740c20e67f66a6b195311d6bcfa9de25c9c8d3ed4298b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantd28ed76f40d6d888f57740c20e67f66a6b195311d6bcfa9de25c9c8d3ed4298b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
