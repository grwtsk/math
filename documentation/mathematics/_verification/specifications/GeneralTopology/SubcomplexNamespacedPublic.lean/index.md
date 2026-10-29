# Verification target: Subcomplex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "115d3f1a979d5a4939b74abf9286f1213d6fa024",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `115d3f1a979d5a4939b74abf9286f1213d6fa024`.

Source path: `GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean.json)

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
| 1 | `lemma` | [RelCWComplex.Subcomplex.closedCell_subset_of_mem](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-closedcell-subset-of-mem.md) | 44 | `result-track:481ce7a6528e0a03fe085f89fd42e33215aed9bd6f1e5525d0b3be5be54ad88e` |
| 2 | `lemma` | [RelCWComplex.Subcomplex.openCell_subset_of_mem](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-opencell-subset-of-mem.md) | 53 | `result-track:f64d552a082c96aad45cbc45bb51a3dfb8f5958b08ac03570aad28861a281999` |
| 3 | `lemma` | [RelCWComplex.Subcomplex.cellFrontier_subset_of_mem](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-cellfrontier-subset-of-mem.md) | 59 | `result-track:242a65d4e3ef71602a27b6a51c417ee2c1b15d5eb2c71c5369e8b115115e9640` |
| 4 | `lemma` | [RelCWComplex.Subcomplex.union_closedCell](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-union-closedcell.md) | 65 | `result-track:0053f16b50a51230d1679845a7bee071ee4d60be10bb4a2776d056fae78e98d2` |
| 5 | `lemma` | [CWComplex.Subcomplex.union_closedCell](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/cwcomplex-subcomplex-union-closedcell.md) | 76 | `result-track:22b8a6fd8d64652af6e02a9824a2c4dbabb67e7b89079e366ea93cc2e50ca559` |
| 6 | `lemma` | [RelCWComplex.Subcomplex.disjoint_openCell_subcomplex_of_not_mem](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-disjoint-opencell-subcomplex-of-not-mem.md) | 81 | `result-track:7356c1ad7f8aa5d9059e859d5fd56e3da43be8aaaf33a24fe5cd9f567ea7db97` |
| 7 | `instance` | [RelCWComplex.Subcomplex.instRelCWComplex](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-instrelcwcomplex.md) | 89 | `declaration-track:be971fd320c7543cfafb277ef991bc92aed48c96ac5fbf1662de10c77460816b` |
| 8 | `instance` | [CWComplex.Subcomplex.instCWComplex](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/cwcomplex-subcomplex-instcwcomplex.md) | 128 | `declaration-track:85dd2783714cb18592ca78e0228d25d785fa806794a9a588ff4bb2f136323df3` |
| 9 | `lemma` | [CWComplex.Subcomplex.cell_def](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/cwcomplex-subcomplex-cell-def.md) | 133 | `result-track:2fa93a17df174efac5cd072ddd8d8efcfdbf5c5f489404f63543eaf23b877f82` |
| 10 | `lemma` | [CWComplex.Subcomplex.map_def](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/cwcomplex-subcomplex-map-def.md) | 138 | `result-track:f69ab4e4337fb8332240ce68f0931fe2a35571f8ef0b889093c31d60143b064e` |
| 11 | `lemma` | [RelCWComplex.Subcomplex.openCell_eq](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-opencell-eq.md) | 143 | `result-track:97d97deb0ef40d29e81819e581867f16c61bacd4c463b4d4119dbb788ea2ed0f` |
| 12 | `lemma` | [RelCWComplex.Subcomplex.closedCell_eq](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-closedcell-eq.md) | 148 | `result-track:b3f0256a5da990701a2891114c9f37dbd548fcb12d034a733a9e7f834d8bb616` |
| 13 | `lemma` | [RelCWComplex.Subcomplex.cellFrontier_eq](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-cellfrontier-eq.md) | 153 | `result-track:1a0524d1e6637de976f54b0661eb8f7da34f2623d21cb43ac7411069eed34eba` |
| 14 | `instance` | [RelCWComplex.Subcomplex.finiteType_subcomplex_of_finiteType](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-finitetype-subcomplex-of-finitetype.md) | 158 | `declaration-track:7135d09deccffd94d9725e9e9f6c1766ec48f6cdbd58a835872444a66d1166b3` |
| 15 | `instance` | [RelCWComplex.Subcomplex.finiteDimensional_subcomplex_of_finiteDimensional](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-finitedimensional-subcomplex-of-finitedimensiona.md) | 165 | `declaration-track:9eff6897fc73b43e6263f0bc8d6c14d093f6be5d33c2314ec5298de12a39f205` |
| 16 | `instance` | [RelCWComplex.Subcomplex.finite_subcomplex_of_finite](../../../../GeneralTopology/SubcomplexNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-finite-subcomplex-of-finite.md) | 174 | `declaration-track:a90d8c57d3b7f172343d9ba7b91d48adbc0989f596924913439846dbce3bf96a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17dc960bc669a350fa8aee8bd60fa00671e3041a4cc18a213d1931cd0b686119 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
