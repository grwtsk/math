# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalGraphRealization.Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eebb7840fb703e8e1e9a609c479d59fee54161d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eebb7840fb703e8e1e9a609c479d59fee54161d`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.AdmittedGraph` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.Topology` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphPrePoint](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphprepoint--639c07e85abc7a522f065588.md) | 26 | `declaration-track:639c07e85abc7a522f06558820f237ea6c94277b16aa5e373cb13361d145591c` |
| 2 | `inductive` | [GraphEndpointEqv](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphendpointeqv--00fad9ce64334a0a8fcecc0f.md) | 38 | `declaration-track:00fad9ce64334a0a8fcecc0fa6cb9608dc6177fc6143a2162877c416dbe379b8` |
| 3 | `theorem` | [graphEndpointEqv_minimal](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphendpointeqv-minimal--2eb9c9fdd725a9c3081f86f8.md) | 58 | `result-track:2eb9c9fdd725a9c3081f86f858253a325ce1459caef142099e6574c6397c805c` |
| 4 | `def` | [graphEndpointSetoid](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphendpointsetoid--eff3d4458026b9ac61258799.md) | 78 | `declaration-track:eff3d4458026b9ac61258799ce07c3e204063ba983e1b736420deb64b0b3b88d` |
| 5 | `def` | [GraphPoint](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphpoint--a17831c2ffb7a2017445398f.md) | 90 | `declaration-track:a17831c2ffb7a2017445398f9138b7688ef74c6a17d25a17dc851e2b47f3dbe7` |
| 6 | `def` | [graphQuotientMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphquotientmap--ecb92227898cf6bd95405dea.md) | 97 | `declaration-track:ecb92227898cf6bd95405dea76d25227f5f7790cd5e9a0d902368f2f037cd5f7` |
| 7 | `def` | [quotientMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/quotientmap--21cad5cb23878a554b3fcd8d.md) | 104 | `declaration-track:21cad5cb23878a554b3fcd8d5a4185340680ce617c0f07f02f754346941d243b` |
| 8 | `def` | [vertexPoint](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/vertexpoint--8ccc374d03d9eb4d82bbfc03.md) | 111 | `declaration-track:8ccc374d03d9eb4d82bbfc035a7c14133099d58c4049a6b157d506abeddd580d` |
| 9 | `def` | [edgePath](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgepath--0fd48857423c8101bc62ba42.md) | 118 | `declaration-track:0fd48857423c8101bc62ba42618c8f5cebeb5addc6f6601c7401bafa93ebf131` |
| 10 | `theorem` | [edgePath_zero](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgepath-zero--6f3b93e028dfdcefb7b6cf53.md) | 125 | `result-track:6f3b93e028dfdcefb7b6cf53df09eb4e2211bd79967b194eeb7c48d29be351f3` |
| 11 | `theorem` | [edgePath_one](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgepath-one--2171e68495ebc3590045a989.md) | 132 | `result-track:2171e68495ebc3590045a989bfd6326878200072128f61880397438338991c60` |
| 12 | `def` | [VertexFiberTag](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/vertexfibertag--18c3ca59c94d970b5f152797.md) | 143 | `declaration-track:18c3ca59c94d970b5f152797c97d757a0c2dbd91001de5810c520138203d8ea3` |
| 13 | `theorem` | [graphEndpointEqv_preserves_vertexFiberTag](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphendpointeqv-preserves-vertexfibertag--34977a0dea88ee67619bb315.md) | 152 | `result-track:34977a0dea88ee67619bb315d608ef8c89b93e95177f0e87ed90ed7d09351abc` |
| 14 | `theorem` | [vertexPoint_injective](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/vertexpoint-injective--05c88f08a3fb5c0f81f07608.md) | 181 | `result-track:05c88f08a3fb5c0f81f076082ab3994c3d56a5ca4df78e99e94588733637cb8c` |
| 15 | `def` | [InteriorTag](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/interiortag--4d47e5bd6d61862782ed09bf.md) | 196 | `declaration-track:4d47e5bd6d61862782ed09bf521ec28415d8b8c2f897a1b2e30639793c72c62e` |
| 16 | `theorem` | [interiorTag_zero_false](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/interiortag-zero-false--95490325774dfa7c60e71307.md) | 204 | `result-track:95490325774dfa7c60e7130720ae66684a5d0c5c368738254c89bfef6d089ebd` |
| 17 | `theorem` | [interiorTag_one_false](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/interiortag-one-false--ee966ab8fb0b6432da4e13b2.md) | 216 | `result-track:ee966ab8fb0b6432da4e13b22b4c71ebe15f12f3160f312f72312894ebf82896` |
| 18 | `theorem` | [graphEndpointEqv_preserves_interiorTag](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphendpointeqv-preserves-interiortag--81d83bb586d1b1fb524c1378.md) | 228 | `result-track:81d83bb586d1b1fb524c137897ad52bc21e1311f7eecd76548910fa3dce5f103` |
| 19 | `def` | [EdgeInteriorPoint](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgeinteriorpoint--b75b13658198288fd803d2de.md) | 254 | `declaration-track:b75b13658198288fd803d2dea6d80fd1d66db849ed912f7a44eb1ed212ddbb6b` |
| 20 | `theorem` | [edgePath_injective_on_interior](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgepath-injective-on-interior--699b6a4b1ac07b16eef0b64a.md) | 261 | `result-track:699b6a4b1ac07b16eef0b64a0e4766fd8645a04b0775960a357e0fdb4b41e815` |
| 21 | `theorem` | [distinct_edgeInteriors_disjoint](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/distinct-edgeinteriors-disjoint--983df74962e9d89e7fae271d.md) | 275 | `result-track:983df74962e9d89e7fae271d7df787e146984a0f0e6eae78a73e17a3c304d84c` |
| 22 | `theorem` | [edgeInterior_avoids_vertices](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgeinterior-avoids-vertices--4b4d0948023cae756758853f.md) | 291 | `result-track:4b4d0948023cae756758853fb45a1f6d10b91adecd8939e334bf73ede2ed412c` |
| 23 | `def` | [graphPreTopology](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphpretopology--b5b4403beafbf40b42fb52b0.md) | 314 | `declaration-track:b5b4403beafbf40b42fb52b0a96afa1cef0acd43a0f5083f73db2ef25a2bbe4d` |
| 24 | `theorem` | [graphPreTopology_vertexSubset_open](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphpretopology-vertexsubset-open--c31bf1331c4f773e3b02b0b7.md) | 352 | `result-track:c31bf1331c4f773e3b02b0b7982b2a4f2f997d00ea7404f3e8bafd2e926b225c` |
| 25 | `def` | [graphRealizationTopology](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphrealizationtopology--cff67f5b5405ff57cd950609.md) | 368 | `declaration-track:cff67f5b5405ff57cd9506090ff268d6e4b6c359cc419946395a3fcdd12dd61f` |
| 26 | `theorem` | [graphQuotientMap_continuous](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/graphquotientmap-continuous--84dd0c506188d36edf9b8c89.md) | 375 | `result-track:84dd0c506188d36edf9b8c895a09981d6322da91ce394e64367c4395f619ae7e` |
| 27 | `theorem` | [quotientMap_continuous](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/quotientmap-continuous--fd42ab499905986552583553.md) | 386 | `result-track:fd42ab49990598655258355371b6669de0be345dfb386434c1df05fb673d8b0d` |
| 28 | `theorem` | [edgePath_continuous](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/edgepath-continuous--f167bba7d071115a7468dafc.md) | 396 | `result-track:f167bba7d071115a7468dafcfffe62c16ea276bef4e7c2d34f0f1b7428ff852e` |
| 29 | `theorem` | [continuous_from_graphRealization_iff](../../../../../mathematics/Topology/GeneralTopology/TopologicalGraphRealization/Variant2f1314ba175ca2bf2a47f7fb32c20c95496d6fce1ab310caf0dbee7569d4ff7a.lean/declarations/continuous-from-graphrealization-iff--ab9b1acd3b58fd5856e3d38e.md) | 408 | `result-track:ab9b1acd3b58fd5856e3d38eaeb3e1f5627982c7305c68272ce007471e7d9a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
