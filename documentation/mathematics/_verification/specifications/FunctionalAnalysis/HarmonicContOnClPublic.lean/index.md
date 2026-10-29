# Verification target: Harmonic Cont On Cl Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9669d5cb4532a4289cff45c8b13a9e92f989b1e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HarmonicContOnCl/Variantca0909693102ef5baecbe4ccddf63a2a615ffcd179d2a77fddf8838819e54aed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9669d5cb4532a4289cff45c8b13a9e92f989b1e`.

Source path: `GRWTSK/Topology/GeneralTopology/HarmonicContOnCl/Variantca0909693102ef5baecbe4ccddf63a2a615ffcd179d2a77fddf8838819e54aed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HarmonicContOnCl/Variantca0909693102ef5baecbe4ccddf63a2a615ffcd179d2a77fddf8838819e54aed.lean.json)

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
| 1 | `structure` | [HarmonicContOnCl](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/harmoniccontoncl.md) | 34 | `declaration-track:ddc7d3d0bfcbf4610c350b3de77334fcef6f79e8f3cad622f417fe31e539bb24` |
| 2 | `theorem` | [HarmonicOnNhd.harmonicContOnCl](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/harmoniconnhd-harmoniccontoncl.md) | 38 | `result-track:284e2d780630315b003f067add102bcb2a16940e261ae53abd826766fa418fd5` |
| 3 | `theorem` | [IsClosed.harmonicContOnCl_iff](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/isclosed-harmoniccontoncl-iff.md) | 42 | `result-track:596b13663c518207f534a866453a51bb93285462e0de7cc03f13dcd7b73b5da7` |
| 4 | `theorem` | [harmonicContOnCl_const](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/harmoniccontoncl-const.md) | 49 | `result-track:8703611e3b95ebf1925da32b730e238bf57a1e504e60daf667faa15acdd2daf1` |
| 5 | `theorem` | [continuousOn_ball](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/continuouson-ball.md) | 54 | `result-track:6fa12ebb412e89a436734817824933138894c9e16888aafa8b426052c6bcf665` |
| 6 | `theorem` | [mk_ball](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/mk-ball.md) | 62 | `result-track:72a4a7ce5a5dfd98791f14c68baaa87b384e216f96b48c86e749bdae28c38f5d` |
| 7 | `theorem` | [contDiffAt](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/contdiffat.md) | 67 | `result-track:2baacd0730f2eb7df154a9d70950e9f531cdec385408cf3b9b5faeb557e05672` |
| 8 | `theorem` | [differentiableAt](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/differentiableat.md) | 70 | `result-track:5e361a06b656b88e8e10dff203b92bd6a35dddd2e579640dc5dfb27062226afa` |
| 9 | `theorem` | [mono](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/mono.md) | 73 | `result-track:df3d35740e1ed24da631415d8774af6354b9ba4f13e37b1c310bd17239ac6642` |
| 10 | `theorem` | [add](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/add.md) | 76 | `result-track:1b47c505f4e17057b00fca3c80123a861d25bf10c459981cdbb7715b270935dd` |
| 11 | `theorem` | [add_const](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/add-const.md) | 79 | `result-track:60a651ed7f0cda011c289d95cb1fc8ba4b11571240ad5946a887d2194b9c93f7` |
| 12 | `theorem` | [const_add](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/const-add.md) | 82 | `result-track:8e76b0585f835adce60825f29ad5f60d1567acb1accba8b61b9c0ea568b99861` |
| 13 | `theorem` | [neg](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/neg.md) | 85 | `result-track:5b91a66299142a35f24de61b6ba784866f753a6e91e6e026d1fdc6b4bc47d7e7` |
| 14 | `theorem` | [sub](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/sub.md) | 88 | `result-track:33457db8d621c0ae7f5cbf4fd9417e0a7c4085528eb46cdbd62dc8301ada023b` |
| 15 | `theorem` | [sub_const](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/sub-const.md) | 91 | `result-track:7fe1b3fa8f3f2c1baf396b3ee84b3d18550df862b894b4beb908786167133df1` |
| 16 | `theorem` | [const_sub](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/const-sub.md) | 94 | `result-track:7517fc4d8f858a1b6960790b54af308309de8898dc5adfc4de505f46d024fa32` |
| 17 | `theorem` | [const_smul](../../../../FunctionalAnalysis/HarmonicContOnClPublic.lean/declarations/const-smul.md) | 97 | `result-track:7b096412c0ca0546765e5c735b85050a5c0b84000536a6112018a80f27059311` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf443a0f94f4f298620433e862f315b26fee56569619aa129a5542d41f6817b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HarmonicContOnCl/Variantca0909693102ef5baecbe4ccddf63a2a615ffcd179d2a77fddf8838819e54aed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/HarmonicContOnCl/Variantca0909693102ef5baecbe4ccddf63a2a615ffcd179d2a77fddf8838819e54aed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
