# Verification target: GRWTSK.Analysis.ErrorBounds.RationalComplexDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdf89eca42bf2fa5fd52f9e81a5665905418649e",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RationalComplexDisk.lean/index.md) · [Full source](../../../../RealFunctions/RationalComplexDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdf89eca42bf2fa5fd52f9e81a5665905418649e`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalComplexDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout`](../../../../RealFunctions/EnclosedGramReadout.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Disk](../../../../RealFunctions/RationalComplexDisk.lean/declarations/disk.md) | 42 | `declaration-track:c4dcc704b1c90c55c98c12e0744fb076db56463a360d0ec53fb5ca36f55655b9` |
| 2 | `def` | [point](../../../../RealFunctions/RationalComplexDisk.lean/declarations/point.md) | 48 | `declaration-track:058d360f9f88f69649c821766b9d5ff26a7d94d647c256985d28ef41f7037d97` |
| 3 | `def` | [diskAdd](../../../../RealFunctions/RationalComplexDisk.lean/declarations/diskadd.md) | 50 | `declaration-track:5015bf474a741fafbdcc267e10ea5682da33a77ed29ee84e2b09c1535869337a` |
| 4 | `def` | [diskNeg](../../../../RealFunctions/RationalComplexDisk.lean/declarations/diskneg.md) | 52 | `declaration-track:883088a0522bcfdb25905b5df2990546008ef97fe51f61b81c668c7e23242095` |
| 5 | `def` | [diskSub](../../../../RealFunctions/RationalComplexDisk.lean/declarations/disksub.md) | 54 | `declaration-track:6c5a85282664e899bacab4059c91b954cdb5aa83093bde6332e9aa6bc6218daa` |
| 6 | `def` | [diskConj](../../../../RealFunctions/RationalComplexDisk.lean/declarations/diskconj.md) | 56 | `declaration-track:fcbbd4e9a1da29f5ce29a05c7b420ef50a3ceecc759ab0cb306ff5347f821c9e` |
| 7 | `def` | [centerSize](../../../../RealFunctions/RationalComplexDisk.lean/declarations/centersize.md) | 59 | `declaration-track:8dad529a97fec6c70b987813544b8c45281037655d67943b57d6f780f7a31799` |
| 8 | `def` | [diskMul](../../../../RealFunctions/RationalComplexDisk.lean/declarations/diskmul.md) | 62 | `declaration-track:235db496380408fb890a4a2ac9017c8429a2a1f7925aa1cce869e7778393687f` |
| 9 | `def` | [diskSum](../../../../RealFunctions/RationalComplexDisk.lean/declarations/disksum.md) | 66 | `declaration-track:24fbe8d0b517969fb00a544720586c37b688f3efe1c5e149473761415f672e11` |
| 10 | `def` | [readoutDisk](../../../../RealFunctions/RationalComplexDisk.lean/declarations/readoutdisk.md) | 70 | `declaration-track:0cdc41180bbddb5437eda0611e28589f29b3b3746d8f8d918fb380b5a3981e9e` |
| 11 | `def` | [lower](../../../../RealFunctions/RationalComplexDisk.lean/declarations/lower.md) | 73 | `declaration-track:113fc3ceb278fb51bc5db12203ffe7f200731d65a11400ad7e56af5202aa1ff5` |
| 12 | `def` | [upper](../../../../RealFunctions/RationalComplexDisk.lean/declarations/upper.md) | 75 | `declaration-track:c41a2ae12816f21dd7457ba7d7d0934f21119e7e35223c425b66540e558cf8b4` |
| 13 | `def` | [lowerClears](../../../../RealFunctions/RationalComplexDisk.lean/declarations/lowerclears.md) | 78 | `declaration-track:7c26431b360b8be65698aa06ee367c4844ee5f5921724ce932daa9129f0b0c1a` |
| 14 | `def` | [center](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center.md) | 84 | `declaration-track:88c5c3ce0f0da48379a776b6b316f48fccc457a990f49bebe0f0b4bc75c7fa64` |
| 15 | `def` | [Contains](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains.md) | 87 | `declaration-track:6d5df7cc2ed4ff32914f318d4e1900652434dac759043d759db7ecde7c1aca8c` |
| 16 | `theorem` | [center_add](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-add.md) | 89 | `result-track:4fd1527617a9ec6064c3b0a38854dc1207a2e9d4e21facca283c3f82e7fb96c4` |
| 17 | `theorem` | [center_neg](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-neg.md) | 92 | `result-track:3da661ca3157b628ee8181a456218a09baaa698d16d16d91e4c3fa8c1f771476` |
| 18 | `theorem` | [center_conj](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-conj.md) | 95 | `result-track:c0b6aa6abc7aaf5b41afb9afe7fe5e99e9838737e8fdb00ab81c4f437d80987c` |
| 19 | `theorem` | [center_mul](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-mul.md) | 98 | `result-track:0d51e41301e1d3a0c58af78ffd85beccaa503eaf43bd2657e2f1873822018edc` |
| 20 | `theorem` | [center_sum](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-sum.md) | 101 | `result-track:9d320ee5ded1fcebc31da52e2376b9b037d439975a27f4e90d27cd6e296e0391` |
| 21 | `theorem` | [centerSize_nonnegative](../../../../RealFunctions/RationalComplexDisk.lean/declarations/centersize-nonnegative.md) | 105 | `result-track:4c6d0520f42e0dc853297154827adcc1d0a47d8437d827cf6838763d81cd354f` |
| 22 | `theorem` | [center_norm_le](../../../../RealFunctions/RationalComplexDisk.lean/declarations/center-norm-le.md) | 109 | `result-track:d1c277b4dac772c06775413ecc759d8f2e4793bbfce9d8c6776d09e9842db185` |
| 23 | `theorem` | [contains_radius_nonnegative](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-radius-nonnegative.md) | 114 | `result-track:f7a9f1a7d883e59a7099089bcdc4aed083a130da89442a7fd7ad95ad1e20e7a8` |
| 24 | `theorem` | [contains_point](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-point.md) | 119 | `result-track:9e32b232597a5ee0031aab2e90a9136c527330f87f50bb438ec7676287a149c3` |
| 25 | `theorem` | [contains_add](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-add.md) | 122 | `result-track:627f81a691710a84f538a53903bd3284b8b3b626dee6658666c9160fe35a1dbd` |
| 26 | `theorem` | [contains_neg](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-neg.md) | 132 | `result-track:e4c5ed3b49461cab618236373d44ad3d43cddaaee40b1c16768ea61e47672a62` |
| 27 | `theorem` | [contains_sub](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-sub.md) | 141 | `result-track:c14e095825ad283e942b08492c96cba1f6b4c4736705875fd62e32c7af7fb212` |
| 28 | `theorem` | [contains_conj](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-conj.md) | 145 | `result-track:676c3c53456ebd66e2062a11976920d757cbd26e9f7efd8a00313c3dd703e8eb` |
| 29 | `theorem` | [contains_mul](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-mul.md) | 152 | `result-track:2d79641b9882c15931e10aa05dde321558cc82fcf678f4b697bcb8e1a4e2b39b` |
| 30 | `theorem` | [contains_sum](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-sum.md) | 175 | `result-track:54282007c86f1c547371a63dcbabec2c77320ea67065bbb7589a16b6ad56cf4c` |
| 31 | `theorem` | [readoutDisk_contains](../../../../RealFunctions/RationalComplexDisk.lean/declarations/readoutdisk-contains.md) | 186 | `result-track:62b637f12e3993586295a3790f06c830ac676d590887f1b26a1e23ee0426f92f` |
| 32 | `theorem` | [contains_real_error](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-real-error.md) | 199 | `result-track:15e87dd062fac0774848cd9c9633867c6581f51aabd4663fc81d744d652b3831` |
| 33 | `theorem` | [contains_real_interval](../../../../RealFunctions/RationalComplexDisk.lean/declarations/contains-real-interval.md) | 205 | `result-track:1b946546d414d9e0a19ba08e94be41573439b769e1b5c5aacd34666d7ba855ec` |
| 34 | `theorem` | [readoutDisk_real_error](../../../../RealFunctions/RationalComplexDisk.lean/declarations/readoutdisk-real-error.md) | 211 | `result-track:bc32a2aedeedac19128b8376045931a8066e936f424f017e083d73286295958a` |
| 35 | `theorem` | [lowerClears_sound](../../../../RealFunctions/RationalComplexDisk.lean/declarations/lowerclears-sound.md) | 221 | `result-track:ffe9106c1ce1745a229c61fe3e31fd338e4aa71243f04891adfb011b4234c61a` |
| 36 | `theorem` | [lowerClears_rejects_negative_radius](../../../../RealFunctions/RationalComplexDisk.lean/declarations/lowerclears-rejects-negative-radius.md) | 229 | `result-track:229b6141880c5227eef1f01e68607773abe539cd942e5d242c9122600ac3edc0` |
| 37 | `theorem` | [lowerClears_rejects_equality](../../../../RealFunctions/RationalComplexDisk.lean/declarations/lowerclears-rejects-equality.md) | 233 | `result-track:13c352afb683b1260996274c82b4b58ff4509b90d43da5a2600ebdd2fe0944ac` |
| 38 | `theorem` | [radius_product_required_fixture](../../../../RealFunctions/RationalComplexDisk.lean/declarations/radius-product-required-fixture.md) | 237 | `result-track:4b0f29f0b80e4afcc69de72a18af9aac6c360e47b079e06b923451d38f1792f5` |
| 39 | `theorem` | [rational_readout_radius_fixture](../../../../RealFunctions/RationalComplexDisk.lean/declarations/rational-readout-radius-fixture.md) | 243 | `result-track:07a1a821845e4ac5b7863636045ac20f4a521a0907b1e77fc3f8728669a6e7a4` |
| 40 | `def` | [imaginaryMatrixDisk](../../../../RealFunctions/RationalComplexDisk.lean/declarations/imaginarymatrixdisk.md) | 251 | `declaration-track:2c7cceda4df4ff84f70a299be2bc8aae7cd30507792b35caad48a08195bd1852` |
| 41 | `def` | [imaginaryTestDisk](../../../../RealFunctions/RationalComplexDisk.lean/declarations/imaginarytestdisk.md) | 255 | `declaration-track:61eb74c8af7b475f3d6d369bbde4cca5d00e6b7ca8c135bf0bfa483129ed711a` |
| 42 | `theorem` | [imaginary_readout_disk_fixture](../../../../RealFunctions/RationalComplexDisk.lean/declarations/imaginary-readout-disk-fixture.md) | 258 | `result-track:5509c973fba3db31b9f7ac63db65aabae62e54f747a70d7892f836b9aed53496` |
| 43 | `theorem` | [strict_threshold_fixture](../../../../RealFunctions/RationalComplexDisk.lean/declarations/strict-threshold-fixture.md) | 265 | `result-track:b195453b5a71b7bcc97a81cf09e336bc02b09f9ace70f5c368497db7c3101fbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ee5ff83607ace5044abc0205e8da9bc829fa31e5a691b8a28f080095c2b4c76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/RationalComplexDisk.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
