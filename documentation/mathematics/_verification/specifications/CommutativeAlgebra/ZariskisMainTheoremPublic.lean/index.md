# Verification target: Zariskis Main Theorem Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87`.

Source path: `GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean.json)

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
| 1 | `def` | [ZariskisMainProperty](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty.md) | 75 | `declaration-track:251b9d7b52054ebc0073e218ef0d417a0f1ca33dac5278d0ceb7cd5096f12bb9` |
| 2 | `lemma` | [zariskisMainProperty_iff](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-iff-source-edition-2.md) | 79 | `result-track:6eb9765ee7813a79d1c7c02b70265d29d95949808176b2238c43335d6f16b6c5` |
| 3 | `lemma` | [zariskisMainProperty_iff'](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-iff.md) | 88 | `result-track:2dfcc19a159a7ece14f268d8df997180b54cd54d4d74c6c845fee6c42bc68a58` |
| 4 | `lemma` | [zariskisMainProperty_iff_exists_saturation_eq_top](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-iff-exists-saturation-eq-top.md) | 96 | `result-track:388ac096b7e424214321461cb3e83723316b18a7ffc99c78126dd16584b1e06e` |
| 5 | `lemma` | [ZariskisMainProperty.restrictScalars](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-restrictscalars.md) | 102 | `result-track:93b545eecc8587d494429b06b7a17f8d22583b97eed0c827aee7cb01c29dcfb8` |
| 6 | `lemma` | [ZariskisMainProperty.trans](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-trans.md) | 109 | `result-track:8425e26be13012d19ce3619c3908d385a04057f133601ee5c68b054a1066dd39` |
| 7 | `lemma` | [ZariskisMainProperty.of_isIntegral](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-isintegral.md) | 131 | `result-track:981428fd092f8c6a1c30e1fad578e6e34019d66aa8547a5db3493873f13f3cea` |
| 8 | `lemma` | [isIntegral_of_isIntegralElem_of_monic_of_natDegree_lt](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/isintegral-of-isintegralelem-of-monic-of-natdegree-lt.md) | 144 | `result-track:cad73c4cd3a120c8e1bde69660e37c6ba0f5b7bf0271503f84a2529b864ca865` |
| 9 | `lemma` | [exists_isIntegral_sub_of_isIntegralElem_of_mul_mem_range](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/exists-isintegral-sub-of-isintegralelem-of-mul-mem-range.md) | 178 | `result-track:2abdbd9d5041f74a411ed7de30b62cc8a86a8ebfc74e2c0005af3e8917c1b5e3` |
| 10 | `lemma` | [exists_isIntegral_leadingCoeff_pow_smul_sub_of_isIntegralElem_of_mul_mem_range](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/exists-isintegral-leadingcoeff-pow-smul-sub-of-isintegralelem-of-mul-mem.md) | 191 | `result-track:46b83039afa1837b346db2147129f914c8ff306989696a5c95814f8d1831e74c` |
| 11 | `lemma` | [exists_leadingCoeff_pow_smul_mem_conductor](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/exists-leadingcoeff-pow-smul-mem-conductor.md) | 232 | `result-track:64c054d5b5619307965302f6766f99c8f11dc4b8859df54a89467d8b9080f14c` |
| 12 | `lemma` | [exists_leadingCoeff_pow_smul_mem_radical_conductor](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/exists-leadingcoeff-pow-smul-mem-radical-conductor.md) | 260 | `result-track:6abdbaff3f7f2124b55278071639e771b89eb25249d1ef218b14f73cc692478b` |
| 13 | `lemma` | [isStronglyTranscendental_mk_radical_conductor](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/isstronglytranscendental-mk-radical-conductor.md) | 294 | `result-track:2c377ef50ef68baae41b63a05e374b8c222de1a6683a0284f82190a92dc32399` |
| 14 | `lemma` | [not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isIntegrallyClosed](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/not-isstronglytranscendental-of-weaklyquasifiniteat-of-isintegrallyclose.md) | 315 | `result-track:8fa59389697fca12a86f8362277acee39724e4413597c3ea88882b75177aa225` |
| 15 | `lemma` | [not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isDomain_aux](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/not-isstronglytranscendental-of-weaklyquasifiniteat-of-isdomain-aux.md) | 347 | `result-track:630e5a288edef5d8c8fa210061e9074f723bd414d3f2781ff250cc0aea9593a3` |
| 16 | `lemma` | [not_isStronglyTranscendental_of_weaklyQuasiFiniteAt](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/not-isstronglytranscendental-of-weaklyquasifiniteat.md) | 404 | `result-track:5b4f0b6c74dd185e9c1a7a4e6e828f513eeae1908cd3ab402b412152305c7a31` |
| 17 | `lemma` | [not_isStronglyTranscendental_of_quasiFiniteAt](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/not-isstronglytranscendental-of-quasifiniteat.md) | 448 | `result-track:875eac3b3787aadb95207812711e6197bdf22d1933945e9dbf336007c6c5b892` |
| 18 | `lemma` | [ZariskisMainProperty.of_adjoin_eq_top](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-adjoin-eq-top.md) | 463 | `result-track:4b0b3dce9dcb66c70390bca3a651879a2adb251675012ee0dce7a787b633e584` |
| 19 | `lemma` | [ZariskisMainProperty.of_algHom_polynomial](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-alghom-polynomial.md) | 507 | `result-track:ec65538c884ae67164740d3855c89c48d7670eef93d36ac856c5355bd9c7627f` |
| 20 | `lemma` | [ZariskisMainProperty.of_algHom_mvPolynomial](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-alghom-mvpolynomial.md) | 555 | `result-track:bbaa2928a645d7e5c84603fb766caf1b96911e929e01a3a790531013a354afa8` |
| 21 | `lemma` | [ZariskisMainProperty.of_finiteType_of_weaklyQuasiFiniteAt.](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-finitetype-of-weaklyquasifiniteat.md) | 635 | `result-track:0fe29ddd6929285db4e1d18103141a7ceb88d5d797ed2a4cc081b12689e4b37a` |
| 22 | `lemma` | [ZariskisMainProperty.of_finiteType.](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-of-finitetype.md) | 658 | `result-track:30f156172a82f63c91f9881841f34f1a6a7c6183ec2997595f2cb53ea0783897` |
| 23 | `lemma` | [ZariskisMainProperty.exists_fg_and_exists_notMem_and_awayMap_bijective](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-exists-fg-and-exists-notmem-and-awaymap-bijective.md) | 664 | `result-track:b1a044cd6d53f1ba4ed2baff927643fbf0c63260c8175b1ad65822a6bb442238` |
| 24 | `lemma` | [QuasiFiniteAt.exists_fg_and_exists_notMem_and_awayMap_bijective](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/quasifiniteat-exists-fg-and-exists-notmem-and-awaymap-bijective.md) | 701 | `result-track:369dbdbb7f57864504c244639e11dce16f499b34cdddaabc4ab77a4153711dff` |
| 25 | `lemma` | [ZariskisMainProperty.quasiFiniteAt](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/zariskismainproperty-quasifiniteat.md) | 708 | `result-track:0e04d68c9f594411b3f36fc3704ffc831b269daf9ce279cd25f67d997887c932` |
| 26 | `lemma` | [QuasiFiniteAt.of_weaklyQuasiFiniteAt](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/quasifiniteat-of-weaklyquasifiniteat.md) | 725 | `result-track:7fbce91ea9214fd412f28c834360bb13105f11383b396f5e2c248adc2d734759` |
| 27 | `lemma` | [QuasiFiniteAt.of_quasiFiniteAt_residueField](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/quasifiniteat-of-quasifiniteat-residuefield.md) | 730 | `result-track:7e518459a3a3f56676001b0c107309284ad694052a2437e0d27b2de95a7bc959` |
| 28 | `lemma` | [QuasiFiniteAt.of_isOpen_singleton_fiber](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/quasifiniteat-of-isopen-singleton-fiber.md) | 740 | `result-track:9783060df46a0faf68d51157589ebf3d8b2359349597eb7743672c1a085469e6` |
| 29 | `lemma` | [quasiFiniteAt_iff_isOpen_singleton_fiber](../../../../CommutativeAlgebra/ZariskisMainTheoremPublic.lean/declarations/quasifiniteat-iff-isopen-singleton-fiber.md) | 752 | `result-track:4f4f4150c8ff165663cb016bcd113c7cfacf6a5f1adef4805d311010fffa654b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59ffb0426ca529201d6df2cbf51292139ea90fda3fd194d8163739e7812c39ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean","GRWTSK/_verification/specifications/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
