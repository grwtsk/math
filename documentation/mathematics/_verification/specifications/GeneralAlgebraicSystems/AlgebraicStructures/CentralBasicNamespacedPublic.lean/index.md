# Verification target: Central Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9558ca5f940620f7443f5b2315c062bbe4dd20fb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9558ca5f940620f7443f5b2315c062bbe4dd20fb`.

Source path: `GRWTSK/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [center_eq_bot](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/center-eq-bot.md) | 43 | `result-track:92ab182cd4daa02fd873735fd50db445e87d1067f7bdc9aa35ca391e59aefaf7` |
| 2 | `lemma` | [mem_center_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/mem-center-iff.md) | 46 | `result-track:831da11d83b06b0da8c829661b6abf5d989b109749bc2d07e1e348ac2eb29ca2` |
| 3 | `instance` | [self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/self.md) | 50 | `declaration-track:f1a607236b596f38d6d67b9e874430b27e5d58a1c33cf27f0270e919b71309e6` |
| 4 | `lemma` | [baseField_essentially_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/basefield-essentially-unique.md) | 53 | `result-track:134c5c3d671dd68c01be218fd14ad84528a6b57c0303e60f46ce1c63dd1f3a0a` |
| 5 | `lemma` | [of_algEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/of-algequiv.md) | 70 | `result-track:5fdb08a7e4245fbdc22aa9aecf28596a70f83d3944f8574b3c21477a28c6fe77` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralBasicNamespacedPublic.lean/declarations/instance.md) | 80 | `declaration-track:ae653f9455b3c0666b69dfbeffa08f50fb423a84e93d6271a6b2d7ea88a5f1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25bda9e7c29267aa747ddfff39e7373ae5a5e2297ac5b4782c4bd3ae6949cc52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
