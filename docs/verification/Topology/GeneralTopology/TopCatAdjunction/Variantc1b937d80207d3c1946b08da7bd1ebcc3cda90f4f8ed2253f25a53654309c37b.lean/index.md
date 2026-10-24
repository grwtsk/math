# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652423528df7373a1e38d0ef5579443851ccae88",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652423528df7373a1e38d0ef5579443851ccae88`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CondensedSet.coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/condensedset-coinducingcoprod--7b7dd1d7991127bc79820217.md) | 40 | `declaration-track:7b7dd1d7991127bc798202178e2c45c24dc9418adc3932ed133b59c001fde337` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--cecd352e027f1f3608b03229.md) | 49 | `declaration-track:cecd352e027f1f3608b03229d97fc9ae8ff81ea3ddedf8df509676624037656e` |
| 3 | `abbrev` | [CondensedSet.toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/condensedset-totopcat--329648ce36a8bb3525b010e9.md) | 53 | `declaration-track:329648ce36a8bb3525b010e98185d9f21cb6d094f74ce4d11fed17f46ae10367` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/continuous-coinducingcoprod--da96604026a307f9dcc84abd.md) | 59 | `result-track:da96604026a307f9dcc84abd32a3fa7c7917bab356bb26ceb6cd83945ac23249` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/totopcatmap--f0dbf66f35f98d0b94052dce.md) | 70 | `declaration-track:f0dbf66f35f98d0b94052dce12720dba372b16fb5139b1a69c234e18a9fb2bbe` |
| 6 | `def` | [condensedSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/condensedsettotopcat--a46e1cdd99103c5ce0174e5e.md) | 87 | `declaration-track:a46e1cdd99103c5ce0174e5e3f1265539f2d464431d86c0d9d89c7b72b96e86f` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/topcatadjunctioncounit--ea4caf693324e351db68f7c7.md) | 96 | `declaration-track:ea4caf693324e351db68f7c7dbe6ed7ad87938ac6e76f55f1071aea2d3c3b7ee` |
| 8 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/topcatadjunctioncounitequiv--15bd90d5a7950f19e0a830b6.md) | 106 | `declaration-track:15bd90d5a7950f19e0a830b6d30edeb8857989eb8f46c136ba02bd2dee3224f4` |
| 9 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/topcatadjunctioncounit-bijective--0171ec3a1e6262476c739a36.md) | 111 | `result-track:0171ec3a1e6262476c739a3652d8cd0ab5dcedced6285be5515c659410f18df7` |
| 10 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/topcatadjunctionunit--231c5b057d7822242fa4987f.md) | 118 | `declaration-track:231c5b057d7822242fa4987f44f9396273eae0f18f3d4b2e171bb403a1c8fb0d` |
| 11 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/topcatadjunction--a44c1c0144b367a3536e54e2.md) | 137 | `declaration-track:a44c1c0144b367a3536e54e229c0892d8f47ce6ee8c3cb341647ff819a609e87` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--8b5ff249edef0df46eeca60a.md) | 145 | `declaration-track:8b5ff249edef0df46eeca60ae0a0eb2aa2e56d013f955cde5adaa5c2ef74691f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--d1e7a226557fa9cb7bb88d98.md) | 149 | `declaration-track:d1e7a226557fa9cb7bb88d98a04ca2847360a2b271859b4858bbc64403fdbe4a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--fa2f040563aa662310235ec3.md) | 153 | `declaration-track:fa2f040563aa662310235ec30f46f6f77c410a721933dad4f644f0aa0195e790` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--222088fad1fc8f7016238f3f.md) | 159 | `declaration-track:222088fad1fc8f7016238f3f1dedfaf1caa3d19ec4b7bd6b837c7abe52ab1d59` |
| 16 | `def` | [condensedSetToCompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/condensedsettocompactlygenerated--f6ba5a7069422f5a4cbcd7a4.md) | 164 | `declaration-track:f6ba5a7069422f5a4cbcd7a4d77d4deecb36f0f3d8b45195f51e445c55466f4a` |
| 17 | `def` | [compactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/compactlygeneratedtocondensedset--b93ae9d2c5879a582e42add2.md) | 171 | `declaration-track:b93ae9d2c5879a582e42add24906bd8abd8fcf2c42f47825af2203f3327458fa` |
| 18 | `def` | [compactlyGeneratedAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/compactlygeneratedadjunction--6b6c422a7ba1de5106528879.md) | 180 | `declaration-track:6b6c422a7ba1de510652887971a560ad5e05879bdd94bae2591f0f69bd2b91f9` |
| 19 | `def` | [compactlyGeneratedAdjunctionCounitHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/compactlygeneratedadjunctioncounithomeo--9a7458db206b1c033d1cd6e9.md) | 190 | `declaration-track:9a7458db206b1c033d1cd6e9815891466f38a9fba02adf9e9a979c2329c30f79` |
| 20 | `def` | [compactlyGeneratedAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/compactlygeneratedadjunctioncounitiso--b1addd0d24531681754b1a2c.md) | 202 | `declaration-track:b1addd0d24531681754b1a2c18a445c3535c54b027200d7653f447a0f798328b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/instance--24a3bdbaf1448e188374b7a7.md) | 206 | `declaration-track:24a3bdbaf1448e188374b7a7125b882a2d9d6fcfb207ddd6f5384ebdc4b5fdd4` |
| 22 | `def` | [fullyFaithfulCompactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantc1b937d80207d3c1946b08da7bd1ebcc3cda90f4f8ed2253f25a53654309c37b.lean/declarations/fullyfaithfulcompactlygeneratedtocondensedset--942ce3f1c6de63beddeb3df1.md) | 215 | `declaration-track:942ce3f1c6de63beddeb3df1ea2bfda49d3d82d8c5587aed086a17b763307a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
