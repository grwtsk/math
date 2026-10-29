# Verification target: Registry Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae71bf353ed3da9988b9ef7d39e4a39a79a0115b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RegistryEdition1.lean/index.md) · [Full source](../../../../Combinatorics/RegistryEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae71bf353ed3da9988b9ef7d39e4a39a79a0115b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Registry/Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Taxonomy.Projection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Registry](../../../../Combinatorics/RegistryEdition1.lean/declarations/registry.md) | 7 | `declaration-track:d48973248679ae0802ad34a34d5e4a1551caaa049216a14f2a2c32a8ca9d8c53` |
| 2 | `def` | [UniqueTaxonIds](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniquetaxonids.md) | 19 | `declaration-track:e9adcf95959881d78b93dd3c360a23ca6ca11952a124807aee9a2abe2cebc3a6` |
| 3 | `def` | [UniqueConceptTaxa](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniqueconcepttaxa.md) | 22 | `declaration-track:3935a2637845e6b9a7a38097ce1313e23682895ef2270ee775b5ba7c78109d23` |
| 4 | `def` | [UniqueEvidenceIds](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniqueevidenceids.md) | 25 | `declaration-track:2de542d0c5e8923a08a60e3282f8366d28ea190f2e86d94ae49739bec4c53daf` |
| 5 | `def` | [UniqueWitnessEvidenceIds](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniquewitnessevidenceids.md) | 28 | `declaration-track:11b86ed9d32365c656d7b7be5c7de5798e0b94693fddea11e37b53361c88fb3a` |
| 6 | `def` | [UniqueRelationIds](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniquerelationids.md) | 31 | `declaration-track:0719e4896d63e9aecc47e6348b198d8456fc9014f98c8775a13bcf4da5ab8a59` |
| 7 | `def` | [UniqueProjectionIds](../../../../Combinatorics/RegistryEdition1.lean/declarations/uniqueprojectionids.md) | 34 | `declaration-track:095f80619b5095f63389eca0f8cc0ef7c09045d41c1962eba89ad16f6f668522` |
| 8 | `def` | [findTaxon?](../../../../Combinatorics/RegistryEdition1.lean/declarations/findtaxon.md) | 37 | `declaration-track:09bab2f927fdafad4d42c404b66cdbdda6491a930be525444f997c9118d9522e` |
| 9 | `def` | [findEvidence?](../../../../Combinatorics/RegistryEdition1.lean/declarations/findevidence.md) | 41 | `declaration-track:1922d9690bbc2f70a11212428ae9c345679b434134edb37d577585e0bb7a8013` |
| 10 | `def` | [findWitnessEvidence?](../../../../Combinatorics/RegistryEdition1.lean/declarations/findwitnessevidence.md) | 45 | `declaration-track:d66dc4737da73e743d6fbb61f36443d8d290bfa96e36482bf06455306a89678c` |
| 11 | `def` | [WitnessesResolveAs](../../../../Combinatorics/RegistryEdition1.lean/declarations/witnessesresolveas.md) | 51 | `declaration-track:81fe08e7621eac7659234e6e859692761ec5b5cecc5c74362e5b5b2e91ebeaf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afa06012185921ecb2f51284c9a2d54b20700493d79e30b0d66bd55fee877e4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Registry/Variant76e07461752ced80eb4087d664efbf21134e96914a68f55abef4a7aa6fde8b4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
