# Verification target: GRWTSK.Topology.GeneralTopology.PoleSurgery.Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "339284319d4660fae50aa7d3099ae61fd49b809c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `339284319d4660fae50aa7d3099ae61fd49b809c`.

Source path: `GRWTSK/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.AbsoluteCompactification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Terrain.PointedMetricReconstruction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Authority.AuditEvidence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PoleKind](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/polekind--a6ce829c05a9c0bf81bc30d9.md) | 37 | `declaration-track:a6ce829c05a9c0bf81bc30d9799f13910a03a3f9916000a55481e7915c518971` |
| 2 | `structure` | [PoleCandidate](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/polecandidate--a2eb16321c9fb7bd404ad8cc.md) | 48 | `declaration-track:a2eb16321c9fb7bd404ad8cc54db65be65fbe6afff55fe870bb63543b32e6fc4` |
| 3 | `structure` | [CertifiedPole](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/certifiedpole--8fd5f7b6e54a37ae20d1ce63.md) | 65 | `declaration-track:8fd5f7b6e54a37ae20d1ce638ffe52a7f15aabc8bbf50bf6ae9f5d3d38899e0c` |
| 4 | `def` | [poleId](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/poleid--0b78ed7ff43ec408124eb9d8.md) | 77 | `declaration-track:0b78ed7ff43ec408124eb9d823fb38f4522a87711bb8321060871afbd3f8ed25` |
| 5 | `def` | [stage](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/stage--df2b77f99b199d0766718860.md) | 80 | `declaration-track:df2b77f99b199d07667188608f2314945bb37c88b01bbd44a94ae234fd3768ff` |
| 6 | `def` | [point](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/point--d7168bf8c21aa3c41513c502.md) | 83 | `declaration-track:d7168bf8c21aa3c41513c502fbd96f7b27a88924c455c8149dad5f7fc53960e7` |
| 7 | `def` | [kind](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/kind--b19ecef46531c096a9dce5e9.md) | 86 | `declaration-track:b19ecef46531c096a9dce5e9474e5ab5ca09d44960cf9c04127ce7e9911a6c37` |
| 8 | `def` | [neighborhoodId](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/neighborhoodid--40834ef81a784aafd607fdf5.md) | 89 | `declaration-track:40834ef81a784aafd607fdf59fb46579f0af5d68ee2a65bd8957d11247693d57` |
| 9 | `def` | [boundaryId](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/boundaryid--dfec97e29e989381605d8fc1.md) | 92 | `declaration-track:dfec97e29e989381605d8fc17eac0280f7a741c290555c34e06673cb224c74f4` |
| 10 | `def` | [invariantLedgerId](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/invariantledgerid--46c3c40ca4ea92706bf2512c.md) | 95 | `declaration-track:46c3c40ca4ea92706bf2512ceb00a1cc11069e2f922e0ed340d083a8ee9130fb` |
| 11 | `def` | [certificateId](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/certificateid--923b745e81696877973734c3.md) | 98 | `declaration-track:923b745e81696877973734c39a0b6c4c0cff8fd1596fe2025b6e85d95eb86614` |
| 12 | `theorem` | [evidence_exact](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/evidence-exact--4404ba4e0334c38f73b4db3c.md) | 102 | `result-track:4404ba4e0334c38f73b4db3cafcf657d91608718d9d2e1e997e228e0eb0fc05e` |
| 13 | `structure` | [FinitePoleSystem](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/finitepolesystem--ca3a9320900ad380dad2329f.md) | 114 | `declaration-track:ca3a9320900ad380dad2329fcaf61e90e6a60a4b704d863d2e1deb8ecd3d5449` |
| 14 | `def` | [boundary](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/boundary--a9174f40d5ff69f30f653c3b.md) | 137 | `declaration-track:a9174f40d5ff69f30f653c3b54deb6cab5ebfbd941ebb05cb750e2575a4e7138` |
| 15 | `structure` | [FinitePoleSurgery](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/finitepolesurgery--3113ff8fff933f71e631e4f7.md) | 149 | `declaration-track:3113ff8fff933f71e631e4f7b80519c2b2de6391f89fd24a8e3855ad096496e3` |
| 16 | `def` | [carrier](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/carrier--aa1f1a244af03701fa12aef9.md) | 170 | `declaration-track:aa1f1a244af03701fa12aef9faf79e2acbd9b30f6e6abe687c4e0d9e0d784f7e` |
| 17 | `theorem` | [pole_mem_carrier](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/pole-mem-carrier--59f84b84cfa8f4acbbd4e310.md) | 174 | `result-track:59f84b84cfa8f4acbbd4e31067ae82ccdc49d767fb4ca91252870b29e4aa89b7` |
| 18 | `theorem` | [realized_mem_carrier](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/realized-mem-carrier--56cdec0653877f7efb2c49f3.md) | 178 | `result-track:56cdec0653877f7efb2c49f33dc06bd7f9a31c014c05faa1203479a6898c5b57` |
| 19 | `theorem` | [carrier_isCompact](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/carrier-iscompact--c9ee97bc12135cfeed3864ff.md) | 187 | `result-track:c9ee97bc12135cfeed3864ff2f498ed9f85e8af5b330269e71aa9d66b244426d` |
| 20 | `structure` | [CertifiedBoundaryIsometry](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/certifiedboundaryisometry--3157ef6587dc190aebfe55da.md) | 197 | `declaration-track:3157ef6587dc190aebfe55da284873231f0262926d05f0c84967c8b97dea3fec` |
| 21 | `theorem` | [isometry](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/isometry--44ba71cfeafa0df041c38248.md) | 212 | `result-track:44ba71cfeafa0df041c38248803ab0682e86dccd82967f9d09714e3dadfaf18a` |
| 22 | `abbrev` | [SurgeryPiece](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/surgerypiece--b4eeadce515e6aa5b283416d.md) | 223 | `declaration-track:b4eeadce515e6aa5b283416d0b114f9a62e2276e8499c698ff9a4ad9b14a6710` |
| 23 | `inductive` | [SurgeryBoundaryIdentification](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/surgeryboundaryidentification--982303baca2c20c5593877b4.md) | 233 | `declaration-track:982303baca2c20c5593877b4ff641f506574509e0cd9504e05d75fc5c40bc658` |
| 24 | `def` | [surgeryGluingSetoid](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/surgerygluingsetoid--778c04f2a4025c357c5ef5d6.md) | 249 | `declaration-track:778c04f2a4025c357c5ef5d6e18d38a63c4c7cddb29b031752397c86b0f2b850` |
| 25 | `structure` | [FixedSurgeryData](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/fixedsurgerydata--29d538413653cfbed82cbf91.md) | 265 | `declaration-track:29d538413653cfbed82cbf9180b6c0188a1ebae1e25a7e18f92fbd35df910b93` |
| 26 | `def` | [finitePoleExterior](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/finitepoleexterior--056ab18e3c204a5f36a1f75b.md) | 289 | `declaration-track:056ab18e3c204a5f36a1f75bb484029e5703b2609a8bad96ce76ce5c6e494ecd` |
| 27 | `structure` | [CertifiedFinitePoleSurgeryData](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/certifiedfinitepolesurgerydata--1a20bd89b4f35958c84ed504.md) | 307 | `declaration-track:1a20bd89b4f35958c84ed504931f1b0c5ee479fa295a56a46bc14310478d5656` |
| 28 | `abbrev` | [SurgeryCarrier](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/surgerycarrier--a0a8caad73881a732ef7ed2c.md) | 376 | `declaration-track:a0a8caad73881a732ef7ed2cb930116546940ed2d98e4793455790e1c4fa8843` |
| 29 | `def` | [exteriorPoint](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/exteriorpoint--041b6351de68f82e441a7df8.md) | 397 | `declaration-track:041b6351de68f82e441a7df83eec54adcf0fdc369d14d06f04bff0bc2efdfebd` |
| 30 | `def` | [capPoint](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/cappoint--c5f999c130b74cbe5b42acae.md) | 408 | `declaration-track:c5f999c130b74cbe5b42acaed1ad95ce627d0f562d0f31d33149e1bc72fa8757` |
| 31 | `theorem` | [boundary_identified](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/boundary-identified--b044bccf24cf176c41fe8736.md) | 419 | `result-track:b044bccf24cf176c41fe8736f16a6052f90afc65944335dcbedd05a28d8a0867` |
| 32 | `structure` | [AdmissibleQuotientPseudometric](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/admissiblequotientpseudometric--3f34a3f4ee4fc2eaae73d027.md) | 433 | `declaration-track:3f34a3f4ee4fc2eaae73d027bda5a2a76d18fdc1aad3e8134eef803b71542808` |
| 33 | `structure` | [InducedQuotientLengthMetric](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/inducedquotientlengthmetric--aeb5e0db41d2868fdab9bbed.md) | 459 | `declaration-track:aeb5e0db41d2868fdab9bbed614cfcd17e0f614a91f3792cad5fa62956729265` |
| 34 | `theorem` | [distance_unique](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/distance-unique--dd0cfa5e85a091f90c8ed3da.md) | 484 | `result-track:dd0cfa5e85a091f90c8ed3da868309d5a8ae513637e5771921f586c565e2daa0` |
| 35 | `def` | [RealizedCarrier](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/realizedcarrier--977f06744d3e5105cf472812.md) | 493 | `declaration-track:977f06744d3e5105cf472812d9d7030b48f4b2dca29b8db6e3774e7d2068b384` |
| 36 | `instance` | [realizedMetric](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/realizedmetric--eb79da953cffad0f1f89dcc7.md) | 497 | `declaration-track:eb79da953cffad0f1f89dcc7b402600991c86aa2c9d0436ef11484cffd121334` |
| 37 | `def` | [canonicalComparison](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/canonicalcomparison--f357f07538541fc873144b1b.md) | 503 | `declaration-track:f357f07538541fc873144b1beeffb0021aeb12d090d49d3397351d1f06bdd46a` |
| 38 | `theorem` | [fixedSurgeryData_unique](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/fixedsurgerydata-unique--d3d86410f81aef895e6ee188.md) | 513 | `result-track:d3d86410f81aef895e6ee1882b749ffc7346de89b2445d66e568e2a363c658d3` |
| 39 | `structure` | [CertifiedPoleCoverTower](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/certifiedpolecovertower--3f82cb9d1515e894826b981c.md) | 535 | `declaration-track:3f82cb9d1515e894826b981ce212ab5d4b375b6d296ff746469e17575be9f4a3` |
| 40 | `def` | [compactification](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/compactification--14413b4646530942fbed9dd2.md) | 559 | `declaration-track:14413b4646530942fbed9dd2c60d83d93e12bd29f6cba2a6d6e5946eea3ee62a` |
| 41 | `theorem` | [pole_mem_compactification](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/pole-mem-compactification--641a31b320222d926216c583.md) | 563 | `result-track:641a31b320222d926216c5836f1fa90724dfcd509333b0df3954eb32bfbf1413` |
| 42 | `theorem` | [compactification_isCompact](../../../../../mathematics/Topology/GeneralTopology/PoleSurgery/Variant0e699b94eb1f9d4576e8799cfdac9af4a797e7dbc38e1d1f5f73671ee7a7b172.lean/declarations/compactification-iscompact--827111d008a967e77b6ef019.md) | 572 | `result-track:827111d008a967e77b6ef019657dcc4eccec392666597ebb68b5763a7f3cfd60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
