# Verification target: Certified Remainder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fd4b957ea6bf694dc9f2ee71fef46c32c1b7d1c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fd4b957ea6bf694dc9f2ee71fef46c32c1b7d1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.SnapshotAuthority` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.MinimalCutset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.RouteClosure` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.RouteFrontier` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.ProofStrategy.WitnessDischarge` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedRemainder](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/certifiedremainder.md) | 23 | `declaration-track:b3e1b417fa5fc9bf65fd6be5ebbdb28adcebc5809691d6cf2635807009eb976b` |
| 2 | `def` | [targetShape](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/targetshape.md) | 64 | `declaration-track:115f22836a0bfb5e5f44bf548d862289e1ed39afd1e005d012a9ddc347ce23f2` |
| 3 | `def` | [completedWitness?](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/completedwitness.md) | 81 | `declaration-track:8e0f583a7e6d2c8ad9af46906ebfaa4a812ee0ec6a8e486a976e7e06bfef1e5f` |
| 4 | `def` | [completedProof?](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/completedproof.md) | 98 | `declaration-track:db15f3eb68b9083fb56228e27e462e6a43a66078f40e105f1cb7b139dbb0a38f` |
| 5 | `theorem` | [unresolved_not_discharged](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/unresolved-not-discharged.md) | 117 | `result-track:626b00b8799fd6f28d0435bd20b4b539ec3fe94894395b7c5d6a6e8f326f8e2b` |
| 6 | `theorem` | [target_mem_unresolved_iff_not_discharged](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/target-mem-unresolved-iff-not-discharged.md) | 136 | `result-track:2e3beb04d43ba97670f8af710bb1229e283bb374532f85b5a1bbdaabc4703386` |
| 7 | `theorem` | [target_accounted](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/CertifiedRemainder.lean/declarations/target-accounted.md) | 159 | `result-track:fc1f2ed67610249399de7348b34de321c7f075ebc14d9fed42613c37536df758` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40090370ebee8939b461159745f5ad36fd319246e80c9f5f5012bbc5f6080142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/CertifiedRemainder/Variant74723ca47f29d69abe6d9f007a814c3061a8a80b4e926d59b2a892a305674c91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
