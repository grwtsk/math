# Verification target: GRWTSK.Topology.GeneralTopology.Piecewise.Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f102a6f26d742f900fc3cf8913346ba09f755fc4",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f102a6f26d742f900fc3cf8913346ba09f755fc4`.

Source path: `GRWTSK/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouswithinat-update-same--0803a0dd4c6d2e4e358cb527.md) | 27 | `result-track:0803a0dd4c6d2e4e358cb5279ca0336f20c30fc71bbef36a7487b660b429a272` |
| 2 | `theorem` | [continuousAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuousat-update-same--9f99fdfc3ff07acdb77489f7.md) | 37 | `result-track:9f99fdfc3ff07acdb77489f776e9f4bb82d6b15a437efa3092501260ded1b07d` |
| 3 | `theorem` | [ContinuousOn.if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-if--fc459f1c4bef45c691bec0de.md) | 41 | `result-track:fc459f1c4bef45c691bec0de8750f8e4ebc04162ef43828c8d9bb6569ffa4257` |
| 4 | `theorem` | [ContinuousOn.piecewise'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-piecewise--aae34b0662374d090e0460b1.md) | 67 | `result-track:aae34b0662374d090e0460b1e9c4b14a16a99ba1362cb9e91b7161e09e7eb841` |
| 5 | `theorem` | [ContinuousOn.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-if--932986c72f006ecaac95d65d.md) | 74 | `result-track:932986c72f006ecaac95d65d696158e7efaee1fbd4fe1f34eb5bdd48faae8c5d` |
| 6 | `theorem` | [ContinuousOn.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-piecewise--add32b9429ffdc7f8a400741.md) | 93 | `result-track:add32b9429ffdc7f8a4007411bab8d8838b0e41db3c534c0c084e0116cb855eb` |
| 7 | `theorem` | [continuous_if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-if--367756608799bcd9d72083aa.md) | 98 | `result-track:367756608799bcd9d72083aa36efcd683b2e13671faf4cd4e12d96d087fda326` |
| 8 | `theorem` | [continuous_if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-if--4a039d00665e59bab448670b.md) | 106 | `result-track:4a039d00665e59bab448670b18cc8071dbd9bd0673460281184fbb150a70df93` |
| 9 | `theorem` | [Continuous.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-if--0db4584968fd18918ea9e5fb.md) | 113 | `result-track:0db4584968fd18918ea9e5fb874a2f1834c86c1a228dc393bca0d33d26aa8a18` |
| 10 | `theorem` | [continuous_if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-if-const--145a40c7e1258cbabf3eed4f.md) | 118 | `result-track:145a40c7e1258cbabf3eed4f2e3aaa9faf22514109d36c7710ead8c24ee4b95e` |
| 11 | `theorem` | [Continuous.if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-if-const--b9167e667fbc9ba989c9b292.md) | 123 | `result-track:b9167e667fbc9ba989c9b2924b60b82c684dbee29ca86367878bb6da07c028cb` |
| 12 | `theorem` | [continuous_piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-piecewise--8fcb7bf7d2d357432182fbbb.md) | 127 | `result-track:8fcb7bf7d2d357432182fbbb194251996587e897e088801873f88198d2c55cc3` |
| 13 | `theorem` | [Continuous.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuous-piecewise--c1793b7f198bcc91783b2cf9.md) | 132 | `result-track:c1793b7f198bcc91783b2cf96317c44c587957cfb2f5e6674b3c747b4e9da9c6` |
| 14 | `theorem` | [IsOpen.ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/isopen-ite--157a0b060fe6e2e8cceb59a8.md) | 137 | `result-track:157a0b060fe6e2e8cceb59a8dbb5bbc2a81d915a941fffb74369c0a5538fb7ab` |
| 15 | `theorem` | [IsOpen.ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/isopen-ite--96aa260f369de9a463b3a896.md) | 146 | `result-track:96aa260f369de9a463b3a89647dd97ab551e5bd007e96dfdb0fe6d2fe57b35f4` |
| 16 | `theorem` | [ite_inter_closure_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/ite-inter-closure-eq-of-inter-frontier-eq--2343a793502a799eea99ce2d.md) | 150 | `result-track:2343a793502a799eea99ce2d420335fa04744126745c878f323df8716806e9e8` |
| 17 | `theorem` | [ite_inter_closure_compl_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/ite-inter-closure-compl-eq-of-inter-frontier-eq--47b3746c98b8e1a15ba54679.md) | 155 | `result-track:47b3746c98b8e1a15ba54679dc94ca5e3f29f78f1a553d15a31caaf0d0bd1c1c` |
| 18 | `theorem` | [continuousOn_piecewise_ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-piecewise-ite--50e64fc18d6755a49ce7f5d8.md) | 160 | `result-track:50e64fc18d6755a49ce7f5d89f78c7eaa60dad3a9446d4509600cbd2ca4da47d` |
| 19 | `theorem` | [continuousOn_piecewise_ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant667456249ca4fba63a4fc916842d61870a5aeeffe78af7f72eedbbe1b7fc0ec6.lean/declarations/continuouson-piecewise-ite--343465d506d8a7069c64a8e7.md) | 169 | `result-track:343465d506d8a7069c64a8e70dd63d16449a2da599d743ef49b691abc191f067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
