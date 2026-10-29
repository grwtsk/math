# Verification target: Search API

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7607ad9e8a41bcb92d7dd997dddf7f9287324f7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SearchAPI.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SearchAPI.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7607ad9e8a41bcb92d7dd997dddf7f9287324f7`.

Source path: `GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RootSearchConfig](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/rootsearchconfig.md) | 46 | `declaration-track:ee3843264ff0678184218e12199836064e9df8d94e34458aac910c0a9e63232e` |
| 2 | `structure` | [RootExistenceProof](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/rootexistenceproof.md) | 59 | `declaration-track:3c48783958847a81ce7e842c2355b7c20314f15c82b5d34b0d9bba1919a2272b` |
| 3 | `structure` | [UniqueRootProof](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/uniquerootproof.md) | 70 | `declaration-track:715a7825fcc2cc3965d78cb4dd6fd7f00de2a1134a850e8ab57652cd367ce4ae` |
| 4 | `structure` | [RootIsolation](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/rootisolation.md) | 76 | `declaration-track:3553c730c25a719d383a99e61609b485b06a23104dc5ad100c75356db0c0e05c` |
| 5 | `def` | [findRoots](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findroots.md) | 86 | `declaration-track:d057cac406ce76558b61bada1f8b994e1f3199231ba811cb0b644980d9718222` |
| 6 | `structure` | [UniqueRootResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/uniquerootresult.md) | 114 | `declaration-track:3fa563d685fff71fae45f8e576c64e168dcd5fa1ffeeb67ed57380857729f5c4` |
| 7 | `def` | [findUniqueRoot](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/finduniqueroot.md) | 133 | `declaration-track:01bd9b779e87e8190a67737a4da369f1c7fa8ca76a28a2496e7cf43e6b0da8b5` |
| 8 | `structure` | [OptSearchConfig](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/optsearchconfig.md) | 169 | `declaration-track:28bd41dadc52e2b0c14d19c50507c4142ac97c72d17d68f3b8e1a4e9ad9ca2c1` |
| 9 | `structure` | [GlobalMinResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/globalminresult.md) | 185 | `declaration-track:a6d4cbbfccf1c93d7d0c3b9d9d10ee9f25f0b564ae3e952e89160c7172a8548b` |
| 10 | `structure` | [GlobalMaxResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/globalmaxresult.md) | 203 | `declaration-track:678b53a71d2a2404603259de31ca0b1d763f6e75c1ed60d90b98dcb15de147de` |
| 11 | `def` | [OptSearchConfig.toGlobalOptConfig](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/optsearchconfig-toglobaloptconfig.md) | 217 | `declaration-track:75bc856731afd69876d6fa933aa5ed27a844dd079635d19000fc2b915d5d95b0` |
| 12 | `def` | [findGlobalMin](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findglobalmin.md) | 229 | `declaration-track:73a9e7e703cb0fbba94f19f4fe964548a82166f94c4ca6bf9e95a6797c2d3234` |
| 13 | `def` | [findGlobalMax](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findglobalmax.md) | 251 | `declaration-track:f6778680aea57aea424a6efeedf9f040161cb3b6f61073eb9d6399ee2b6b3e98` |
| 14 | `structure` | [GlobalMin1DResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/globalmin1dresult.md) | 270 | `declaration-track:f420e8b346d9abd253dba0285e5403969274d155a3a51e85d7c61cb839933409` |
| 15 | `structure` | [GlobalMax1DResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/globalmax1dresult.md) | 279 | `declaration-track:5eb56de12372d1a87f04cdb506b65895a736d0e609cc2eb072cb391f32e92075` |
| 16 | `def` | [intervalToBox](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/intervaltobox.md) | 288 | `declaration-track:703eecf0e5f3229e5203180af38b8f70f58b2661d08d0f13c97ca2d28158d04f` |
| 17 | `def` | [findGlobalMin1D](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findglobalmin1d.md) | 294 | `declaration-track:9ea8e23e3e9d8b5da4732290b1fcde7c7f977b415bd2d6af01bc755b5c9e7aa3` |
| 18 | `def` | [findGlobalMax1D](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findglobalmax1d.md) | 330 | `declaration-track:e303c0e6794c0be0dd6e83ea0daebd106951faa2b19b3a09d3bf8c3de45ac5e6` |
| 19 | `structure` | [IntegSearchConfig](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/integsearchconfig.md) | 364 | `declaration-track:2ea928cfbea574f8dbd75820ba78b2e5dd9b95e6e741988e557973f669fbfb81` |
| 20 | `structure` | [IntegralResult](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/integralresult.md) | 375 | `declaration-track:68ef717b8eb063b030870492cd91cf35fc0e688765e579ccc0709fc7be9623f1` |
| 21 | `def` | [findIntegral](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findintegral.md) | 385 | `declaration-track:752264022368f67bc8540cb3a29fb9ed1ed6fe2debb25f87ae4835122677c3d4` |
| 22 | `def` | [findIntegralWithTolerance](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/findintegralwithtolerance.md) | 401 | `declaration-track:31f8184a1bb508f12e6506b2015bb71e4c9b1bac5cdbd3ef7961a0e58b566cee` |
| 23 | `def` | [hasRootIn](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/hasrootin.md) | 420 | `declaration-track:4f10fdc026dd7c843849f8af22caf599e757a5d1974e65e454e543b8bd30311d` |
| 24 | `def` | [isPositiveOn](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/ispositiveon.md) | 425 | `declaration-track:5a7f7065bc7752ecb22ec3e24e977bff9ead3d31345a4ff5427249584450bd9f` |
| 25 | `def` | [isNegativeOn](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/isnegativeon.md) | 429 | `declaration-track:d0609b4537e5a673f2dbde9d4bd126ec76a4c184c2bf825dd4c92c853420f43c` |
| 26 | `def` | [getLowerBound](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/getlowerbound.md) | 433 | `declaration-track:ca0abcb8a1052fcda0df9f06110095fc4595e634d8cdfc9827ca217c2cbdb2c9` |
| 27 | `def` | [getUpperBound](../../../../MeasureAndIntegration/SearchAPI.lean/declarations/getupperbound.md) | 437 | `declaration-track:6fc1c1168ff5e9765d84652c1a5ba9cc36b7a277800fa74d0d818fa125dacc95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e82019dc0b6edb1d409d6d1de16411a71020e1eabd59ce7ee6f75f57f26e874 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SearchAPI/Variantb16891b3c3d1239a0c20b0553f3ce7ce3e901c864b5fe11cfd2e397323e9c913.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
