# Verification target: Graded First Return Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39d29b83516d023b042bdae357b7fb39fa150935",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantcb3a2a1b00ee02e8131d991469d3f4e0dfdb1a37e8cb9f6d149b02fc753597b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39d29b83516d023b042bdae357b7fb39fa150935`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantcb3a2a1b00ee02e8131d991469d3f4e0dfdb1a37e8cb9f6d149b02fc753597b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantcb3a2a1b00ee02e8131d991469d3f4e0dfdb1a37e8cb9f6d149b02fc753597b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.FirstReturn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GradedValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedvalid.md) | 41 | `declaration-track:9d9f9a566cb3c461ffacaefcf7c8ffacab412fdeadcb58d3e5baaf3bc8fd3471` |
| 2 | `def` | [gradedFirstReturnPerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedfirstreturnperm.md) | 45 | `declaration-track:945c5fa2f83f9755eb7adb97a91e3a55ebe7c8985a037680f5c892e89c4fcbf5` |
| 3 | `theorem` | [gradedFirstReturnPerm_grade](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedfirstreturnperm-grade.md) | 51 | `result-track:586c627ba2b8c9e8bc1bd13a17eb0afee97a56f855c035acf07562a58de0769f` |
| 4 | `theorem` | [gradedFirstReturnPerm_value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedfirstreturnperm-value.md) | 58 | `result-track:229cbca369dd2317848a2b5b11d8866cd450e32abd8370b3d0f4732367b24f51` |
| 5 | `theorem` | [gradedFirstReturnPerm_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedfirstreturnperm-bijective.md) | 66 | `result-track:5ddb3ac0ab0e6a56119c8a70fbd180212f0841637b1c0517edfd69f0aaddcebb` |
| 6 | `theorem` | [gradedFirstReturnPerm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/gradedfirstreturnperm-symm.md) | 71 | `result-track:0cdb78a6ce2f9235e1bdf3544d35f7260067829b09aa0e35e9bc3b59e310a6ee` |
| 7 | `def` | [transportGradedFirstReturn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/transportgradedfirstreturn.md) | 81 | `declaration-track:edfb992c513c9c2cd0c5b9e18c6d0c424bf71347881e49cab0785e74a6a52421` |
| 8 | `theorem` | [transportGradedFirstReturn_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/transportgradedfirstreturn-apply.md) | 88 | `result-track:ea58e2e614848fbdcf6d0321af1211f19395ba9df572ed15b4e3c2d6df724e01` |
| 9 | `theorem` | [transportGradedFirstReturn_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/transportgradedfirstreturn-bijective.md) | 96 | `result-track:638293e2fd4009e71a6f0bcd2d9373efdd2349eb7510b17863dbc1f6be0e6d14` |
| 10 | `theorem` | [transportGradedFirstReturn_preserves_grade](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GradedFirstReturnNamespaced.lean/declarations/transportgradedfirstreturn-preserves-grade.md) | 103 | `result-track:26665a126e174a84227f691909e54b0d651479ec1d58e68dffb9a8445a267fe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36448ade588cb81b746eb7925e515e224943b35cb15a1275f7132902d41a0303 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantcb3a2a1b00ee02e8131d991469d3f4e0dfdb1a37e8cb9f6d149b02fc753597b2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GradedFirstReturn/Variantcb3a2a1b00ee02e8131d991469d3f4e0dfdb1a37e8cb9f6d149b02fc753597b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
