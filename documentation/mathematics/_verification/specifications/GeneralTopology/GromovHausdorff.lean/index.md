# Verification target: Gromov Hausdorff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c1b85953815730c1ae4ca2fcb47b663936378d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/GromovHausdorff.lean/index.md) · [Full source](../../../../GeneralTopology/GromovHausdorff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c1b85953815730c1ae4ca2fcb47b663936378d`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Closeds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.GromovHausdorffRealized` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Kuratowski` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](../../../../GeneralTopology/GromovHausdorff.lean/declarations/isometryrel.md) | 66 | `declaration-track:f4b957d2655877f8205af4659d223017d6db9539cdbe154c24104032b8267380` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../GeneralTopology/GromovHausdorff.lean/declarations/equivalence-isometryrel.md) | 70 | `result-track:d9a482070628641cf1fab21e864ddbe82e73232279f97fa60bcea904b6b526c6` |
| 3 | `instance` | [IsometryRel.setoid](../../../../GeneralTopology/GromovHausdorff.lean/declarations/isometryrel-setoid.md) | 74 | `declaration-track:356305cd226ffe34acb86185e89210679cb8e428dd69863bf9efd2aad985b9f6` |
| 4 | `def` | [GHSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghspace.md) | 78 | `declaration-track:772e25f7c80cfb663522f0d5d7dbf6594a6b449792e2a729d31d83dda5dfc2ef` |
| 5 | `def` | [toGHSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/toghspace.md) | 82 | `declaration-track:658e8ef2bfb4a3eae3ef12241c2b31f164bb5b5545bf057ba0040f9e33dda8ad` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance-source-edition-6.md) | 85 | `declaration-track:c349adc4d7783bf72bb4fdc392c84f292d18f38abe40c74a411de430476185f5` |
| 7 | `def` | [GHSpace.Rep](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghspace-rep.md) | 89 | `declaration-track:8081cc3373429cba66bebc9c6155921053defd79afac992499e0fd567d6b1bda` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../GeneralTopology/GromovHausdorff.lean/declarations/eq-toghspace-iff.md) | 92 | `result-track:8098b4de43ba6d10c594a7eb4874ddc07781c2a1f494f84eece99fbcdfd0f682` |
| 9 | `theorem` | [eq_toGHSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/eq-toghspace.md) | 110 | `result-track:cd76aaf0d15c4d391e83ac324de98161a5138d1961ad5415f01a98541b5b0073` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/repghspacemetricspace.md) | 115 | `declaration-track:3fe6f3ea091723a012b1b7b7fc3754bad6f249ad4b2de79eea4f9c8ac53e7f94` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/rep-ghspace-compactspace.md) | 118 | `declaration-track:157bd7dd42341cb1c9b3811454ff055c766731f591fb085ef5e612ba53578502` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../GeneralTopology/GromovHausdorff.lean/declarations/rep-ghspace-nonempty.md) | 121 | `declaration-track:c45cf7f3b0857136f2b36c5ed82c3332833d618079b60f7c51b5d5fa3a37a60c` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghspace-toghspace-rep.md) | 126 | `result-track:0d46c25f6d253adff373224361841413476140ed85c8cb5d89cb6027d543ca06` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../GeneralTopology/GromovHausdorff.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv.md) | 133 | `result-track:6942f06e3f33bd770942ec3f0b9fa73569998949046cc67ba546817b5a3f87ab` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:188b7701eee7487a944dd18d47260f30002203982d2a4367556a071bbafea395` |
| 16 | `def` | [ghDist](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghdist.md) | 167 | `declaration-track:f784f6b916383a54c6781bb045975d71d811101192a6453873b79a4a5d71343c` |
| 17 | `theorem` | [dist_ghDist](../../../../GeneralTopology/GromovHausdorff.lean/declarations/dist-ghdist.md) | 171 | `result-track:38116c97640d70fb1df9eed0bf1e1a0192dde0a87caaa7c03e00050718be55b5` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghdist-le-hausdorffdist.md) | 176 | `result-track:5e1b39558f20de3e153b1c2f7112cbdca484282d607f7432bfd8e1468a0d7c49` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../GeneralTopology/GromovHausdorff.lean/declarations/hausdorffdist-optimal.md) | 232 | `result-track:f07e39a3077a996bd45d245198164563cd17384de36d3392dc0207f93173bcd1` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghdist-eq-hausdorffdist.md) | 376 | `result-track:3fb4063e2834e8343e83b7988f549a6d7d3da50b43fa56ca8782a426b691f92d` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance-source-edition-4.md) | 392 | `declaration-track:4415cb9c3c639f282921d81d31a60133e1b2ba89d48e12891679ed17824cde90` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../GeneralTopology/GromovHausdorff.lean/declarations/topologicalspace-nonemptycompacts-toghspace.md) | 501 | `declaration-track:094f101d4da178dbdce8c80d9a70f9b772dbe9a91727e04f1e1d01ed2d1567e3` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghdist-le-nonemptycompacts-dist.md) | 513 | `result-track:a1a0391221f7fe582b08a179e14780e12b79a063065cfa62594f1f20eb755b1c` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../GeneralTopology/GromovHausdorff.lean/declarations/toghspace-lipschitz.md) | 523 | `result-track:266a4752415c8239b592dea906297389cd13ddaca49e6f65d2dbfe591bfc87f5` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../GeneralTopology/GromovHausdorff.lean/declarations/toghspace-continuous.md) | 527 | `result-track:b5fc70352cb2c3daa1babc938c3597acd611c187ab9411cdaca45b6af511132c` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../GeneralTopology/GromovHausdorff.lean/declarations/ghdist-le-of-approx-subsets.md) | 546 | `result-track:823b60a9e4cb5ee6e7595bc721daaf0e219a9dc9eba84a967cfa071ecd08c18d` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance.md) | 624 | `declaration-track:12839bad811448641cd768f33cb773787c9b75d8ecc4798937408d5457459826` |
| 28 | `theorem` | [totallyBounded](../../../../GeneralTopology/GromovHausdorff.lean/declarations/totallybounded.md) | 759 | `result-track:b6eca8c2aae8ab0505d138bcb5d383e8beaae19b25a0c40a884ee2ba77953c85` |
| 29 | `structure` | [AuxGluingStruct](../../../../GeneralTopology/GromovHausdorff.lean/declarations/auxgluingstruct.md) | 945 | `declaration-track:ae7e70e21fdc9dd14e47d4b6e1fea84a6258521a5e5dfaeb9b1aaba59e6e517e` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance-source-edition-3.md) | 953 | `declaration-track:3cefc40c6de3105a6148dbc8480f2d2bae8bfdc1d08c12ac55c090413910423c` |
| 31 | `def` | [auxGluing](../../../../GeneralTopology/GromovHausdorff.lean/declarations/auxgluing.md) | 963 | `declaration-track:361cccd3afd0cdc47280648dae8776a5a8697d71eedd74d5cf06ef937ce38d24` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorff.lean/declarations/instance-source-edition-5.md) | 972 | `declaration-track:527802cf79c990457fe40503a547e33b2a2b1a797053c1f78f45e3746ec7b54c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2af256bfc2b5c42b1d75e4b43dd46f91495a66e89f3d951bfee5a21b3755c11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
