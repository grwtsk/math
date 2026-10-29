# Verification target: Mirror Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bbce44a280b7132cd06468137f603fcdc90f3c3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant23b69be145c90f38e062aba976911807c65b39e096c393052bc85f7c8cb56da8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bbce44a280b7132cd06468137f603fcdc90f3c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant23b69be145c90f38e062aba976911807c65b39e096c393052bc85f7c8cb56da8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Mirror/Variant23b69be145c90f38e062aba976911807c65b39e096c393052bc85f7c8cb56da8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror.md) | 47 | `declaration-track:a4a76f36e5338591be47fb4d327f3e05a6713df793f2b3d1d6a572074fcde24c` |
| 2 | `theorem` | [mirror_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-zero.md) | 51 | `result-track:a9c69d0ad078f213bca217aa013c7b364495bd41c8f1b47b9731c1201a3f7131` |
| 3 | `theorem` | [mirror_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-monomial.md) | 53 | `result-track:d1527f8da091d6b4b78264545add3b08efa701f235e64bc23abb3e2600c3e637` |
| 4 | `theorem` | [mirror_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-c.md) | 61 | `result-track:a225cb0d027e891a78caf0d93f167b5a7581ce1e5c661ec9b5efa7d7bcd3fb27` |
| 5 | `theorem` | [mirror_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-x.md) | 64 | `result-track:9eb42a368895da586afe99c8821fb3b8a01efb5abdfe2993abd8211349cb14f3` |
| 6 | `theorem` | [mirror_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-natdegree.md) | 67 | `result-track:268956fe6980962fe27edcb1ffd7451ce5e4740c23031da3097eb95d64e13f44` |
| 7 | `theorem` | [mirror_natTrailingDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-nattrailingdegree.md) | 75 | `result-track:80e3697e7e8b5d5f5d0982604ce83ee6b045ae2f5e78982260184f3cba42a8bd` |
| 8 | `theorem` | [coeff_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/coeff-mirror.md) | 81 | `result-track:c61c240902d8a45c684f783a470cc39069a2acbb3120d333ecf2fde5a31308f2` |
| 9 | `theorem` | [mirror_eval_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-eval-one.md) | 99 | `result-track:2aca09a54c9fe2b82b3cff6fbbdccd0b42801a20691ab4bc077882086bffb145` |
| 10 | `theorem` | [mirror_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-mirror.md) | 120 | `result-track:7c31e2eea683821e742b7887a079aafb3a6de01fb2ab0b314ab501918a14608b` |
| 11 | `theorem` | [mirror_involutive](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-involutive.md) | 126 | `result-track:731486101cebd8861e51b2e940212a61c7c6aaabaf8412d538e61b292d93014e` |
| 12 | `theorem` | [mirror_eq_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-eq-iff.md) | 129 | `result-track:5a77ba3ba270334d69e6461a94b2a8324498b8a079ab5eca925db1f1dfdd54c5` |
| 13 | `theorem` | [mirror_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-inj.md) | 133 | `result-track:90fc439a3a4830a705091e5d9455c8f3c7f319190b3106cf56cd2143471a5d66` |
| 14 | `theorem` | [mirror_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-eq-zero.md) | 137 | `result-track:dd764503632e646eabb60fcdfe05f9cf0e7ed81b64ac398e5fb7e3bdf49a700b` |
| 15 | `theorem` | [mirror_trailingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-trailingcoeff.md) | 143 | `result-track:352494a6ea5f77ae0d44903d7682f003cc29078a9e23f56a59f823f9c23bf8fa` |
| 16 | `theorem` | [mirror_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-leadingcoeff.md) | 148 | `result-track:c60daf1b9dfcbad6f61205266db0c0cb43adb0e10f708550334295dfe46ea9cc` |
| 17 | `theorem` | [coeff_mul_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/coeff-mul-mirror.md) | 151 | `result-track:802aeb5701760ceaf232f90eb1c194f2fb346648478eabd7b9fdc5da441300da` |
| 18 | `theorem` | [natDegree_mul_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/natdegree-mul-mirror.md) | 163 | `result-track:be3d5f66befda6c22b75980f2ad97b5485670feb6b9dbf6b14a9c7e6cf15c3ec` |
| 19 | `theorem` | [natTrailingDegree_mul_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/nattrailingdegree-mul-mirror.md) | 168 | `result-track:2665a1198097acafbc63f7f3a87bd345bd7ec4e961f4b26b2ab97a426fce03ae` |
| 20 | `theorem` | [mirror_mul_of_domain](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-mul-of-domain.md) | 174 | `result-track:a8d4bb86eccf34ba2556d181e6fd575cc2767e03d0c1aecd1dd0073d82c00cc0` |
| 21 | `theorem` | [mirror_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-smul.md) | 183 | `result-track:8cb8f130b2fa5f1e3edfb6bfa19c9ae4a7cbdfdf303299e8128b48ef707bea35` |
| 22 | `theorem` | [mirror_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/mirror-neg.md) | 192 | `result-track:5fdeca989bc2368df93c57d1f4548b0304ae5c1b685eb750e75b4d736271af42` |
| 23 | `theorem` | [irreducible_of_mirror](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/MirrorNamespacedPublic.lean/declarations/irreducible-of-mirror.md) | 201 | `result-track:71c7709241ed42515ee10127f1705c6c56b6ed0a240c56eecd6b02b1ba5051db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e11bad8ec698c12881c94d8325db81ad82ccc35e597eb75944898f921dfb154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variant23b69be145c90f38e062aba976911807c65b39e096c393052bc85f7c8cb56da8.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Mirror/Variant23b69be145c90f38e062aba976911807c65b39e096c393052bc85f7c8cb56da8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
