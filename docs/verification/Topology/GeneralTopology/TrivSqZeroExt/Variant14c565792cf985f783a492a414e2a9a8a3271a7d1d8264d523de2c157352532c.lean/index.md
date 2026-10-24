# Verification target: GRWTSK.Topology.GeneralTopology.TrivSqZeroExt.Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc4d7b20a3ca552490a942117118d98bdbca413b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc4d7b20a3ca552490a942117118d98bdbca413b`.

Source path: `GRWTSK/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean.json)

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
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/insttopologicalspace--5e9ab51021ec94ba47ea193a.md) | 44 | `declaration-track:5e9ab51021ec94ba47ea193a3effab5eb65b8ca5d1eb53bac331633d825851dd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--10efb9a01c720776a2fd9d58.md) | 47 | `declaration-track:10efb9a01c720776a2fd9d58ef4228b6099b0d7105e786da1a504352b6b4d4da` |
| 3 | `theorem` | [nhds_def](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/nhds-def--08e3dc1dbfa98623a8cbf5af.md) | 50 | `result-track:08e3dc1dbfa98623a8cbf5af62b15c10f3f29b76a53b022e087871b84a71d448` |
| 4 | `theorem` | [nhds_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/nhds-inl--b1bd49e289992d4bb919433c.md) | 52 | `result-track:b1bd49e289992d4bb919433ce386a737d7ae1e87819c26ce706c92de269e48cc` |
| 5 | `theorem` | [nhds_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/nhds-inr--f3485ee6bd765f5389e7c632.md) | 55 | `result-track:f3485ee6bd765f5389e7c6325fff9e155e077c53c9b75de9dc77a9236c3768e3` |
| 6 | `theorem` | [continuous_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/continuous-fst--41cb1b95978c9c98de796cce.md) | 58 | `result-track:41cb1b95978c9c98de796ccef08d4ea31777dc5e5f8dbb8e3db6ad132a3f8cbc` |
| 7 | `theorem` | [continuous_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/continuous-snd--8c9555d931239fa80d11e981.md) | 61 | `result-track:8c9555d931239fa80d11e98126801799856c49acaace53632544b6b27467b33f` |
| 8 | `theorem` | [continuous_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/continuous-inl--b37106de067ee781fb6e81f5.md) | 64 | `result-track:b37106de067ee781fb6e81f59c4d856e5d5d6da4de776e6c485becca28e9e1f4` |
| 9 | `theorem` | [continuous_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/continuous-inr--bb670b39817040a50054a0f9.md) | 67 | `result-track:bb670b39817040a50054a0f92bb2a15389ee6c2704f61b2f7c2e20efefb9dd5d` |
| 10 | `theorem` | [IsEmbedding.inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/isembedding-inl--bff6f17f7b3b5fb9560a685f.md) | 70 | `result-track:bff6f17f7b3b5fb9560a685fe5139e2b3588ae52314397e221c1d928b0ed5c80` |
| 11 | `theorem` | [IsEmbedding.inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/isembedding-inr--1efaa79c7c3921d1c2e7c20a.md) | 73 | `result-track:1efaa79c7c3921d1c2e7c20a96a82575a6d138fcc2372705f114084756b5f753` |
| 12 | `def` | [fstCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/fstclm--e087e2f0d4b7f02e2313f17b.md) | 80 | `declaration-track:e087e2f0d4b7f02e2313f17b25474059ea72a653926d93da4ff5540f15652483` |
| 13 | `def` | [sndCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/sndclm--76ca42ba699bdb1fb377409a.md) | 85 | `declaration-track:76ca42ba699bdb1fb377409ab7e36df33ebcac18428895e1c40c6dbb1b47e717` |
| 14 | `def` | [inlCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/inlclm--78cea768a44f282d6cf64c0f.md) | 90 | `declaration-track:78cea768a44f282d6cf64c0f792374291b3c52c67e60c912c6fadf4d3d429146` |
| 15 | `def` | [inrCLM](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/inrclm--a6b18e941e12991e365a715a.md) | 95 | `declaration-track:a6b18e941e12991e365a715afc660f98097d7dccffbabad9d7b3c947423a76da` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--3b6af9f3c567b7df2cfd9cd2.md) | 100 | `declaration-track:3b6af9f3c567b7df2cfd9cd28ad855dbc0c1fb600bc97230c32070e3e52d2ad3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--63f192be377408bc65dace84.md) | 103 | `declaration-track:63f192be377408bc65dace8463d6b9913d62048d60848af3576b4c0ce0556623` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--5f46e7a76c18c69eaca5549e.md) | 110 | `declaration-track:5f46e7a76c18c69eaca5549e6a21b41f44c0b3f799f54abcd8c1f3058265acf0` |
| 19 | `theorem` | [topologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/topologicalsemiring--b7b45ac75ac0bb8d3b37f29d.md) | 115 | `result-track:b7b45ac75ac0bb8d3b37f29ddaf7dd9ee78d7df52f7e73b5188e158cc9987316` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--56f57049805f38c7b2425f34.md) | 119 | `declaration-track:56f57049805f38c7b2425f3400f9c8fda4ed76736b9112a2701e70a1985825c6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--8a2b98c41faabf18b3693aea.md) | 123 | `declaration-track:8a2b98c41faabf18b3693aeaaa0a2c2d84e0dc07d14551d3b29b837eb7534d98` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--b0ff6e4e7cb2be81714997b8.md) | 127 | `declaration-track:b0ff6e4e7cb2be81714997b80d2f1d792a9b63016e87256c59d9db40ff59ed5a` |
| 23 | `theorem` | [hasSum_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/hassum-inl--e4e1c72b2ba49f770da78b6c.md) | 133 | `result-track:e4e1c72b2ba49f770da78b6c6b95ebe984c7949bc4abd345743d6a775f3de5f7` |
| 24 | `theorem` | [hasSum_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/hassum-inr--b178ff52919a929d77f5fc44.md) | 137 | `result-track:b178ff52919a929d77f5fc44fbc30214b87846fa14529170e5d27ab0e60bea29` |
| 25 | `theorem` | [hasSum_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/hassum-fst--68bf9b3a5881241691196986.md) | 141 | `result-track:68bf9b3a5881241691196986f63b520e91c186b1133453d1e7660fd2fa713ba1` |
| 26 | `theorem` | [hasSum_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/hassum-snd--194226fa85fab01478f06858.md) | 145 | `result-track:194226fa85fab01478f068582710ef33701cd0517a7e9c5f9f42f201ba051b0f` |
| 27 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instuniformspace--80ca347e43a83596c59ed2cd.md) | 154 | `declaration-track:80ca347e43a83596c59ed2cde13a42d681eb1b67fba8e35216fb988de05f2df1` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--bbb5564df9ccfa848a2c6931.md) | 158 | `declaration-track:bbb5564df9ccfa848a2c6931db3accbb6bc28e8fbfbfebeca5692d0085842ba8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/instance--80ae05afc83eab7abe6f46a1.md) | 161 | `declaration-track:80ae05afc83eab7abe6f46a173ef0e3f9fc303e78d7ec50e75ff4cebab8f7948` |
| 30 | `theorem` | [uniformity_def](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/uniformity-def--264fa2a245370d7b75ee62ed.md) | 167 | `result-track:264fa2a245370d7b75ee62edb3ff4e4bbaa17d25633df07f65cee4ff0b743d75` |
| 31 | `theorem` | [uniformContinuous_fst](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/uniformcontinuous-fst--0ab022abb22e8e1df74cbd1f.md) | 172 | `result-track:0ab022abb22e8e1df74cbd1f2f4f16db927d56ed3105785a912c9a992cb1996f` |
| 32 | `theorem` | [uniformContinuous_snd](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/uniformcontinuous-snd--6f711167c45bf1df210822b8.md) | 175 | `result-track:6f711167c45bf1df210822b80cdc5873e381758542f8d552bbe158a8fd3bded1` |
| 33 | `theorem` | [uniformContinuous_inl](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/uniformcontinuous-inl--426dc572860ff86080d64f41.md) | 178 | `result-track:426dc572860ff86080d64f41120f3443ab590c6c0074824a5084d759fa1214fb` |
| 34 | `theorem` | [uniformContinuous_inr](../../../../../mathematics/Topology/GeneralTopology/TrivSqZeroExt/Variant14c565792cf985f783a492a414e2a9a8a3271a7d1d8264d523de2c157352532c.lean/declarations/uniformcontinuous-inr--8ffa967d521d0fe38b869f9e.md) | 181 | `result-track:8ffa967d521d0fe38b869f9e6ffa960bcedb2aa24ecaed155e13537927d62881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
