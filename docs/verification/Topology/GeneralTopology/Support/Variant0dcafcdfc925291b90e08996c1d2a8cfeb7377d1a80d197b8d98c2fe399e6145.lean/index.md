# Verification target: GRWTSK.Topology.GeneralTopology.Support.Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da14c408a1a90489fe62fbcfd32fd1d79f481cae",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da14c408a1a90489fe62fbcfd32fd1d79f481cae`.

Source path: `GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/multsupport--b769d484336624268623441d.md) | 52 | `declaration-track:b769d484336624268623441d36d4201b5f2eb292a021d38dd8ca57b3086bb177` |
| 2 | `theorem` | [subset_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/subset-multsupport--97a1667973cb642d94f6d2ca.md) | 57 | `result-track:97a1667973cb642d94f6d2ca6c100e652cb1e829f6fdd1aa5ef7a641ce2f88d0` |
| 3 | `theorem` | [isClosed_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/isclosed-multsupport--18e24fb8a851f2af0c5897cc.md) | 63 | `result-track:18e24fb8a851f2af0c5897cc42bf890780f91274d9d053569097f6a3907c5d3b` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/multsupport-eq-empty-iff--baf44274b51f99b365166fd3.md) | 69 | `result-track:baf44274b51f99b365166fd3963c854fc158d9beb838c0f726cd15a97161d668` |
| 5 | `theorem` | [image_eq_one_of_nmem_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/image-eq-one-of-nmem-multsupport--335b7237631b4c19b8873b1c.md) | 75 | `result-track:335b7237631b4c19b8873b1c5d7e1c534960589b6af19084a00acfea27f35bba` |
| 6 | `theorem` | [range_subset_insert_image_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/range-subset-insert-image-multsupport--672251cc6b77068723d9476e.md) | 81 | `result-track:672251cc6b77068723d9476e282ce305af2f2c859a61fb3e2370a315b9253d0d` |
| 7 | `theorem` | [range_eq_image_mulTSupport_or](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/range-eq-image-multsupport-or--55b0b749a8e224f87980f9ca.md) | 89 | `result-track:55b0b749a8e224f87980f9ca7085478efb824c8bd009612ecacf7af278f8077e` |
| 8 | `theorem` | [tsupport_mul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/tsupport-mul-subset-left--e6da5fbbef7691dbcb0956d6.md) | 95 | `result-track:e6da5fbbef7691dbcb0956d67bf09f65ee8d1cabce39cb5be310e947a5c0384a` |
| 9 | `theorem` | [tsupport_mul_subset_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/tsupport-mul-subset-right--7af5f517ce6d14c3e1913c63.md) | 100 | `result-track:7af5f517ce6d14c3e1913c63a043303b0e10366c5d27f6c9afad0c95a7000fc5` |
| 10 | `theorem` | [tsupport_smul_subset_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/tsupport-smul-subset-left--3267fa7526c8170dc9c42d46.md) | 107 | `result-track:3267fa7526c8170dc9c42d46b1853ed3ab36499159c4c8b3e67e388c41d71e46` |
| 11 | `theorem` | [not_mem_mulTSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/not-mem-multsupport-iff-eventuallyeq--5a86f1cc60a000ad7eec03bf.md) | 121 | `result-track:5a86f1cc60a000ad7eec03bf9a22850529714416728fc815b365f6f5c9749cd9` |
| 12 | `theorem` | [continuous_of_mulTSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/continuous-of-multsupport--8a12ef1abb2a8c8f8e32edd3.md) | 128 | `result-track:8a12ef1abb2a8c8f8e32edd36c35adc4671c62c359ba2f78f7ecf3721cdc2c5f` |
| 13 | `def` | [HasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport--ecbfcf8a9888ef05bb799b68.md) | 141 | `declaration-track:ecbfcf8a9888ef05bb799b68a1cc63b663a0d9910a2926f9579874faca5e2e4a` |
| 14 | `theorem` | [hasCompactMulSupport_def](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-def--d445e1dffd58b21e54f9b127.md) | 147 | `result-track:d445e1dffd58b21e54f9b12758b1bc5e49ca591b1e7489bba8338c9f538f76ca` |
| 15 | `theorem` | [exists_compact_iff_hasCompactMulSupport](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/exists-compact-iff-hascompactmulsupport--b1087684e53f99855f1ba4f4.md) | 153 | `result-track:b1087684e53f99855f1ba4f4657242444369d881129d18a85918a55e9b449cf6` |
| 16 | `theorem` | [HasCompactMulSupport.intro](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-intro--21c6d92034934dd8093587f1.md) | 161 | `result-track:21c6d92034934dd8093587f17d8ebaa4d3955e6a082d2aee23ed2c76624c5897` |
| 17 | `theorem` | [HasCompactMulSupport.of_mulSupport_subset_isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-of-mulsupport-subset-iscompact--69de69216e18985605b7ef90.md) | 168 | `result-track:69de69216e18985605b7ef9083bf8555475eb9f3d8d739dde8e5c7f46fae473a` |
| 18 | `theorem` | [HasCompactMulSupport.isCompact](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-iscompact--041735767c7a10f7e7cca324.md) | 173 | `result-track:041735767c7a10f7e7cca324ee2b271cd9e18bd6381d72e8f369500a786e6063` |
| 19 | `theorem` | [hasCompactMulSupport_iff_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-iff-eventuallyeq--9e59d372034d5ee6c5efa20c.md) | 179 | `result-track:9e59d372034d5ee6c5efa20c91d992a8356456113ba0267f050fd0764aa9778b` |
| 20 | `theorem` | [HasCompactMulSupport.isCompact_range](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-iscompact-range--5181edd23239d41a8b7e8172.md) | 191 | `result-track:5181edd23239d41a8b7e817214f63419d3998ceab151624d4a953834e8a21521` |
| 21 | `theorem` | [HasCompactMulSupport.mono'](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-mono--f4501ee377c846b5facf391c.md) | 199 | `result-track:f4501ee377c846b5facf391c14300b3680e2c399f7d51cf8225735fa64d51eed` |
| 22 | `theorem` | [HasCompactMulSupport.mono](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-mono--517bcb448986f4fb90f82bb9.md) | 206 | `result-track:517bcb448986f4fb90f82bb9d94d78494400108cdb8c39f72096c77408c9d503` |
| 23 | `theorem` | [HasCompactMulSupport.comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-comp-left--a28fcc97f090e208bccfe73c.md) | 213 | `result-track:a28fcc97f090e208bccfe73c5d2d77e075a192cb650b55e14aca2b38389fe308` |
| 24 | `theorem` | [hasCompactMulSupport_comp_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-comp-left--0809b312a2a3a6fc434da4b1.md) | 220 | `result-track:0809b312a2a3a6fc434da4b1d007342304efc1a13d6a01355fb0b5c260c47d75` |
| 25 | `theorem` | [HasCompactMulSupport.comp_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-comp-closedembedding--adf53de42e9cc2638c6810eb.md) | 227 | `result-track:adf53de42e9cc2638c6810eb92c68620f5b8a3ef6fb84b78d77007491ff5e497` |
| 26 | `theorem` | [HasCompactMulSupport.comp₂_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-comp-left--6e099eacdcb764744c505d95.md) | 237 | `result-track:6e099eacdcb764744c505d95e366048c983bbdee2fb4ca5414ea25de2fa7d04c` |
| 27 | `theorem` | [HasCompactMulSupport.mul](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactmulsupport-mul--e794ec48ec122b3f0778fc01.md) | 254 | `result-track:e794ec48ec122b3f0778fc014d3c3e57460bb6504b81d1fc920cdca65afe02d6` |
| 28 | `theorem` | [HasCompactSupport.smul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactsupport-smul-left--88d279a1a6916cbb465cac2f.md) | 267 | `result-track:88d279a1a6916cbb465cac2f2574bd2ffa38fa143a2ebcf56f622ab83bbf4a91` |
| 29 | `theorem` | [HasCompactSupport.smul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactsupport-smul-right--3bca2a8f1c90efd3359b539d.md) | 280 | `result-track:3bca2a8f1c90efd3359b539d0951a4b6910f2101eb95d11110bc3f91de82b45c` |
| 30 | `theorem` | [HasCompactSupport.smul_left'](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactsupport-smul-left--60d46b040bf249b1c06973f7.md) | 285 | `result-track:60d46b040bf249b1c06973f752501e8ebeb5eab4b528759402cd185b534d9823` |
| 31 | `theorem` | [HasCompactSupport.mul_right](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactsupport-mul-right--38bdad647b6014b2c02f8d3e.md) | 298 | `result-track:38bdad647b6014b2c02f8d3edce8f36af64297ec7db9a3091cb8f6039b3b7d23` |
| 32 | `theorem` | [HasCompactSupport.mul_left](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/hascompactsupport-mul-left--89a162cf4d21c70bcbfdb0d0.md) | 303 | `result-track:89a162cf4d21c70bcbfdb0d0aeb2e3031e45a5677b69fd9c9974190906678777` |
| 33 | `theorem` | [exists_finset_nhd_mulSupport_subset](../../../../../mathematics/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/declarations/exists-finset-nhd-mulsupport-subset--7229a20fb3682069ef8c3eff.md) | 321 | `result-track:7229a20fb3682069ef8c3eff71cabdcbec11a447dfe451952573b8eda4f8e049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
