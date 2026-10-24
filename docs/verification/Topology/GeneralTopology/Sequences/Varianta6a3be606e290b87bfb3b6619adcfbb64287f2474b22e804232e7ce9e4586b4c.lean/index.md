# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "946541fdfda48c9fbbe2f03c2ce88cfe46389109",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `946541fdfda48c9fbbe2f03c2ce88cfe46389109`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean.json)

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
| 1 | `theorem` | [subset_seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/subset-seqclosure--fec955c40e37796186121694.md) | 79 | `result-track:fec955c40e377961861216941994b257b26ca9f49c9a8445dc931392b0b44fe6` |
| 2 | `theorem` | [seqClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/seqclosure-subset-closure--02eb4cd4906617642f090465.md) | 84 | `result-track:02eb4cd4906617642f090465da2a66aa1869ecb1a7f7a1ce606fd8ed2500a8ff` |
| 3 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqclosed-seqclosure-eq--2871590528c58701f9d1f3c9.md) | 88 | `result-track:2871590528c58701f9d1f3c9b3b076af153093adcafd0a1aca153f7aea0d5a0b` |
| 4 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqclosed-of-seqclosure-eq--25538db08b8797b425d00993.md) | 92 | `result-track:25538db08b8797b425d00993518f46851b0ff7b8bb767ac08e8f9439629a705a` |
| 5 | `theorem` | [isSeqClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqclosed-iff--46db68478318423e84170b2d.md) | 96 | `result-track:46db68478318423e84170b2db19b3261d3ec0a78f5ccd3d70aecdb77fbbc56e1` |
| 6 | `theorem` | [IsClosed.isSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isclosed-isseqclosed--1ede45ea2e92f987081f4236.md) | 100 | `result-track:1ede45ea2e92f987081f4236234504eb915f7533a00a1d9b69217691515c07c7` |
| 7 | `theorem` | [seqClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/seqclosure-eq-closure--515f40405416845409a2e323.md) | 103 | `result-track:515f40405416845409a2e323afd10c016432268fea355cacd861b629e203bc63` |
| 8 | `theorem` | [mem_closure_iff_seq_limit](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/mem-closure-iff-seq-limit--bab573b33640689d4c4c247a.md) | 108 | `result-track:bab573b33640689d4c4c247a8727273ffe3f6bedf81f0e4d2e3f4224975d1ad0` |
| 9 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/tendsto-nhds-iff-seq-tendsto--e95cfb9c4cd9e2cb21e6ae16.md) | 119 | `result-track:e95cfb9c4cd9e2cb21e6ae165f0cffbf5ba57b264db4cfb1fcb23103fff275b8` |
| 10 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto--2f360154b1385ac41550871b.md) | 132 | `result-track:2f360154b1385ac41550871b858f4f2c834dbfe79eca5bf097958ae28c87a5e4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/instance--74bb6afca02fc71c1fe41324.md) | 148 | `declaration-track:74bb6afca02fc71c1fe41324ccb9333de41f2536e63083b757718e3467b1cb0a` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/instance--9ce3ceedc938e769d9a70856.md) | 154 | `declaration-track:9ce3ceedc938e769d9a70856384e99f8bd76407a5dcde82ad04202c05ca795ec` |
| 13 | `theorem` | [Topology.IsInducing.frechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/topology-isinducing-frecheturysohnspace--0c332646836bca28fa212a6f.md) | 158 | `result-track:0c332646836bca28fa212a6f61d0b4429f0ad8cb8dc87faecc8eb808fdd55b9a` |
| 14 | `instance` | [Subtype.instFrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/subtype-instfrecheturysohnspace--4b7057bc4ef35268e9606f75.md) | 168 | `declaration-track:4b7057bc4ef35268e9606f75f184378125673a56c59d872d13769def909e5485` |
| 15 | `theorem` | [isSeqClosed_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqclosed-iff-isclosed--f3ffb03d6ddf73215177a146.md) | 173 | `result-track:f3ffb03d6ddf73215177a146a022704d644067317edabe468086ef376e352770` |
| 16 | `lemma` | [isClosed_iUnion_closure_singleton_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isclosed-iunion-closure-singleton-of-not-tendsto--9e314caf052454fd57def824.md) | 177 | `result-track:9e314caf052454fd57def8245f95bf3d84850378e80e0a0f722053dedcb1008e` |
| 17 | `lemma` | [isClosed_range_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isclosed-range-of-not-tendsto--e5006ef08b00455a229dea2d.md) | 201 | `result-track:e5006ef08b00455a229dea2d33cb2c67592123e8232855662b3d883205e4560a` |
| 18 | `theorem` | [IsSeqClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqclosed-preimage--e148a3f2386aa6c2f60fb913.md) | 208 | `result-track:e148a3f2386aa6c2f60fb9131e345849c5346c73cecf7695bfffe2822f0b1789` |
| 19 | `theorem` | [Continuous.seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/continuous-seqcontinuous--777374e381bc72f78f7be509.md) | 212 | `result-track:777374e381bc72f78f7be5091487b5a1cc030022e484bab1598021cba5e90fe4` |
| 20 | `theorem` | [SeqContinuous.continuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/seqcontinuous-continuous--5c9a73acce277f365a30f4db.md) | 216 | `result-track:5c9a73acce277f365a30f4db92e22536dfeb3ce91f6636de48a2d96e170788c8` |
| 21 | `theorem` | [continuous_iff_seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/continuous-iff-seqcontinuous--492aa77c9fcef8adcae0eef0.md) | 222 | `result-track:492aa77c9fcef8adcae0eef0a9d93cde26b29cf69b41a4128081b3270e2e3185` |
| 22 | `theorem` | [SequentialSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/sequentialspace-coinduced--896b0f69d9cee68e8fe6c400.md) | 226 | `result-track:896b0f69d9cee68e8fe6c4006179b4982c323222dd92ef0ac5a7fbfb7360deec` |
| 23 | `theorem` | [SequentialSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/sequentialspace-isup--717159dc2ef82d431dc4a324.md) | 231 | `result-track:717159dc2ef82d431dc4a324643d5a482c4a1a508f037cad79f4dbf5118221ac` |
| 24 | `theorem` | [SequentialSpace.sup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/sequentialspace-sup--de71f345cfd7d858206b770d.md) | 238 | `result-track:de71f345cfd7d858206b770db020b340ff9bd1c5792c55cbbd07be749b6cd21f` |
| 25 | `lemma` | [Topology.IsQuotientMap.sequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/topology-isquotientmap-sequentialspace--3a2c434338604222471f4bc4.md) | 244 | `result-track:3a2c434338604222471f4bc42aeca519002b6327efdea6cf6b8bc025288fbe58` |
| 26 | `instance` | [Quotient.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/quotient-instsequentialspace--b92751dcb0d7cb0101e6371f.md) | 248 | `declaration-track:b92751dcb0d7cb0101e6371f338f2fc2b7f424367fc41cf4dac76a0bd134feba` |
| 27 | `instance` | [Sum.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/sum-instsequentialspace--11f84885b3aa8c525b229159.md) | 253 | `declaration-track:11f84885b3aa8c525b229159005e1f30bdd2649d09812a28ad2f700b31b802ae` |
| 28 | `instance` | [Sigma.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/sigma-instsequentialspace--4154cfd2a33e1d871c1680e1.md) | 258 | `declaration-track:4154cfd2a33e1d871c1680e1a852cef3e0d8ae922400ac7b3935b9372b35ef7f` |
| 29 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-subseq-of-frequently-in--eccc5e672554591cea741cf9.md) | 270 | `result-track:eccc5e672554591cea741cf949d8cd68b405527234350b35555d3e6234bb176b` |
| 30 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/seqcompactspace-tendsto-subseq--da70d11b9675caf87798b990.md) | 277 | `result-track:da70d11b9675caf87798b9900880b5efe22c710aae928ff6da8334935bd82454` |
| 31 | `theorem` | [IsCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/iscompact-isseqcompact--53a372000e634214c68a9dfe.md) | 288 | `result-track:53a372000e634214c68a9dfeb1e492aeb333cb04c7ec96138e5cf41d406f4a7c` |
| 32 | `theorem` | [IsCompact.tendsto_subseq'](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/iscompact-tendsto-subseq--81919386d8f99f12aeaa9906.md) | 293 | `result-track:81919386d8f99f12aeaa9906e1c45f0fde54c887089f78ee0b0cad72787e2084` |
| 33 | `theorem` | [IsCompact.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/iscompact-tendsto-subseq--0b3d7834dd8ceedc2838d31c.md) | 298 | `result-track:0b3d7834dd8ceedc2838d31c429f696d48cd7bedde3be6d372ccb1ab2e40d48e` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/instance--1eb0447b5bac46a12972530a.md) | 303 | `declaration-track:1eb0447b5bac46a12972530a2b004501f5650fcea9d84c8ce2baf6e188fb664d` |
| 35 | `theorem` | [CompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/compactspace-tendsto-subseq--d6fcdcbe601f9dda7fd56177.md) | 307 | `result-track:d6fcdcbe601f9dda7fd56177c94498f1cd4a75c542313f219ebad37ba27a2005` |
| 36 | `theorem` | [IsSeqCompact.image](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-image--55fab67626fe0a34179d6018.md) | 318 | `result-track:55fab67626fe0a34179d60186ee53cf7e8ef343f0128a7b24f702daed862af71` |
| 37 | `theorem` | [IsSeqCompact.range](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-range--61d80fdb76a1e2531525f7ac.md) | 328 | `result-track:61d80fdb76a1e2531525f7ace94e562dd18ff294f6476600d164023d3a384f9b` |
| 38 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem--bc27e430ffe0da73a9aa7841.md) | 344 | `result-track:bc27e430ffe0da73a9aa7841b9dba2a8a4d42e7db2671e05209c237378b7393a` |
| 39 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-exists-tendsto--baf6d3074edd6cdd54ca6640.md) | 349 | `result-track:baf6d3074edd6cdd54ca6640d9cdfcfd889bca4aaf128459155de366f4ee745d` |
| 40 | `theorem` | [IsSeqCompact.totallyBounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-totallybounded--b057089906718dc0c58f398d.md) | 354 | `result-track:b057089906718dc0c58f398da28ad41187d45e07996d3140be89c28c639f5581` |
| 41 | `theorem` | [IsSeqCompact.isComplete](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-iscomplete--b7f1d38565f32b7ffefb6f70.md) | 370 | `result-track:b7f1d38565f32b7ffefb6f70aa09d366c53de016242299e2f72d7deefbfaaaae` |
| 42 | `theorem` | [IsSeqCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/isseqcompact-iscompact--d16a9ab810ea61d3c965277c.md) | 406 | `result-track:d16a9ab810ea61d3c965277c83871a9621b45a646a7f714afcb5aa5d0f49e7f8` |
| 43 | `theorem` | [isCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/iscompact-iff-isseqcompact--10a8982bd7d4377e3007ffd4.md) | 413 | `result-track:10a8982bd7d4377e3007ffd4a5f22b58c40a6745cbf21dc10f676f5b306348e0` |
| 44 | `theorem` | [compactSpace_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Varianta6a3be606e290b87bfb3b6619adcfbb64287f2474b22e804232e7ce9e4586b4c.lean/declarations/compactspace-iff-seqcompactspace--0817001ca7f0a7da29e770bd.md) | 416 | `result-track:0817001ca7f0a7da29e770bd7754a7ad0c76e2bbd6913e7c05d6f1b8506a1bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
