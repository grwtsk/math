# Verification target: Monotone Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "753ea8edb59daca27707307462af9000e5410243",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variantb359d995af33980bca5d49c4e2d900bc1d4664551eee57520ce167dcc458e8c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `753ea8edb59daca27707307462af9000e5410243`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variantb359d995af33980bca5d49c4e2d900bc1d4664551eee57520ce167dcc458e8c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variantb359d995af33980bca5d49c4e2d900bc1d4664551eee57520ce167dcc458e8c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [liftFun_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/liftfun-veccons.md) | 29 | `result-track:c5327a09b7aa3da535a40a25b1d276c4909b2021ca36e98acdc12be6d9d33694` |
| 2 | `theorem` | [strictMono_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictmono-veccons-source-edition-2.md) | 38 | `result-track:b20c405c64f368e076c660434253f3ca92826abaf84619d428944ac58bd74cb9` |
| 3 | `theorem` | [monotone_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/monotone-veccons.md) | 43 | `result-track:2c43862311446a3cf119933e794b331e25b5751f61d231c22b3657673d5dfc47` |
| 4 | `theorem` | [monotone_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/monotone-vecempty.md) | 49 | `result-track:40d6b40c6a2aaceeb93b7bf437c60886a45268c0f2a89b5bc78d2fa687a14e21` |
| 5 | `theorem` | [strictMono_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictmono-vecempty.md) | 54 | `result-track:b6fb394b24135054c1d5e93acd3346dd745d092162ae80b587ab17092ad073e3` |
| 6 | `theorem` | [strictAnti_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictanti-veccons-source-edition-2.md) | 58 | `result-track:fd5bf085123c2e666a77f204cc6b0d28c7b01b195fdf47487cb2b6a3bf80b0bb` |
| 7 | `theorem` | [antitone_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/antitone-veccons-source-edition-2.md) | 63 | `result-track:b3743f845420f7bbd494e0bb4428d185623880dbf46e73335ec7c71d61a76f6e` |
| 8 | `theorem` | [antitone_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/antitone-vecempty.md) | 69 | `result-track:1ec8832e3e5bc9936df48836d0c3a562234ddb48840797ae64d56cefa3e21141` |
| 9 | `theorem` | [strictAnti_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictanti-vecempty.md) | 74 | `result-track:d3e4ab9e03ea0a948151561849866deac239ec83e09e919befa17204d232b76d` |
| 10 | `theorem` | [StrictMono.vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictmono-veccons.md) | 77 | `result-track:7b92d9097e9c8d3ffa6aad99cff2f30f47be9cb9a2e75aaf0f0c6131257ec64a` |
| 11 | `theorem` | [StrictAnti.vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/strictanti-veccons.md) | 81 | `result-track:3536ebc3d40763f1f720f36f8b18c2133c25af7f4f5fbf5650e83bfcdb7f361e` |
| 12 | `theorem` | [Monotone.vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/monotone-veccons-source-edition-2.md) | 85 | `result-track:a222bba008bd9c6a98d4c09081a8d03cc1ffb461316cc9f1722818a99555b75b` |
| 13 | `theorem` | [Antitone.vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/antitone-veccons.md) | 89 | `result-track:04d7f3aeea7d86a2220133b187b87c7096d263c017e8bd10794bc668a2f7f65e` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/MonotoneNamespaced.lean/declarations/example.md) | 93 | `declaration-track:0f05c2f3acc2f7d1407ba6c1371ea08200e307dd028dc60556b7655be4e3939a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33ef1e78eb436bc1d08bf8c09a906948fb4f24bd24e1e79d9e2087a4b1bad612 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variantb359d995af33980bca5d49c4e2d900bc1d4664551eee57520ce167dcc458e8c5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monotone/Variantb359d995af33980bca5d49c4e2d900bc1d4664551eee57520ce167dcc458e8c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
