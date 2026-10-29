# Verification target: ZMod Quotient Group Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87888abfcc8b20ed150f462715155502ecfda9e1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87888abfcc8b20ed150f462715155502ecfda9e1`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZMultiplesNatEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/quotientzmultiplesnatequivzmod.md) | 40 | `declaration-track:1ca5a8c7a1467050dc17a4d5485e4118ee1a1c09c10b9bcf6c2a90cf555875b9` |
| 2 | `def` | [quotientZMultiplesEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/quotientzmultiplesequivzmod.md) | 45 | `declaration-track:1d89c3fbaa624edca7a0c1a66b1a2b2675789c2a3128628b327471b40402c0ce` |
| 3 | `lemma` | [index_zmultiples](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/index-zmultiples.md) | 49 | `result-track:e56da73dd5e93495ff8c04a3ea59ceacf7ce0a23ea2ec8c0534c1bc6813b5685` |
| 4 | `lemma` | [relIndex_zmultiples_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/relindex-zmultiples-mul.md) | 55 | `result-track:1bde886de79f903a6a2a1d62a3fac5c1196a5c6a3a9b618d5563e3a5e2bfa830` |
| 5 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/zmultiplesquotientstabilizerequiv.md) | 70 | `declaration-track:f3b33ecafe1f4dc9941de3c835e37367c76028f5552f1a17aa626ca7dcc6b679` |
| 6 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply.md) | 87 | `result-track:d8337ad1f7e9f4bd66277a67a05825b48cd8396197b8199727019d3624c6496e` |
| 7 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/zpowersquotientstabilizerequiv.md) | 101 | `declaration-track:02ab088d4226f1e692aee43d8ded35530cdffb3233037097f03e283b80231d57` |
| 8 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/zpowersquotientstabilizerequiv-symm-apply.md) | 106 | `result-track:a7691e187012c73a3f21489313a175eb97515090cbe20ce2bcf1fb9716ef4c57` |
| 9 | `def` | [orbitZPowersEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/orbitzpowersequiv.md) | 111 | `declaration-track:e51317357a08baa68a110c64a54e10f5a1b75ede01fe02b2f28a33d9ecffde86` |
| 10 | `def` | [_root_.AddAction.orbitZMultiplesEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/root-addaction-orbitzmultiplesequiv.md) | 115 | `declaration-track:d1ec2c48482ae572872ca547a90d0a181c5d20c23fd81b54f51d3e67ea234571` |
| 11 | `theorem` | [orbitZPowersEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/orbitzpowersequiv-symm-apply-source-edition-2.md) | 124 | `result-track:8d6a4c193148a77a8fcdaef62711dcb9e7c96165fab730240a7dd3a2dc6dc8b9` |
| 12 | `theorem` | [orbitZPowersEquiv_symm_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/orbitzpowersequiv-symm-apply.md) | 129 | `result-track:7b0e43312c1c6015a4806fd17cde4df9c8d87e4c42e222e2c65a98abd1947ee1` |
| 13 | `theorem` | [_root_.AddAction.orbitZMultiplesEquiv_symm_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/root-addaction-orbitzmultiplesequiv-symm-apply.md) | 135 | `result-track:fff03af90a711b6aa66bd5d779492ef89cd541f34de28dc414f5061576359d46` |
| 14 | `theorem` | [minimalPeriod_eq_card](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/minimalperiod-eq-card.md) | 147 | `result-track:b19293e6f4cb2a1aba72eccb627bad002b86ef9c0cde0e5d19c10637ec62bf37` |
| 15 | `instance` | [minimalPeriod_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/minimalperiod-pos.md) | 152 | `declaration-track:33d77cb5cd7158d7fce1f4fa3dd4eada36ca61267e0380e703210888c73b7505` |
| 16 | `theorem` | [Nat.card_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/nat-card-zpowers.md) | 170 | `result-track:293baadd82895eec5d8a540eee20ee51ca07da6998cfe9a7b76bc9ea09d6ccc8` |
| 17 | `lemma` | [finite_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/finite-zpowers.md) | 177 | `result-track:fe36994708e6d1b9daa4785fa086d6802ebb97f856b46daa0e687d2518119cc8` |
| 18 | `lemma` | [infinite_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/infinite-zpowers.md) | 182 | `result-track:f7ab0c21038f7388fadac176b79d73f35815922f71aafe635f128e9187b51a83` |
| 19 | `def` | [quotientEquivSigmaZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/quotientequivsigmazmod.md) | 196 | `declaration-track:35c1d89ea15d401f0a3d714ab2fd3f7a5b7e02b15fc3ba3a9bfe886149e67fd9` |
| 20 | `lemma` | [quotientEquivSigmaZMod_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/quotientequivsigmazmod-symm-apply.md) | 201 | `result-track:a3b4712eb48419fe24a0574f126043cd4d4678de96fff4998dbc31b9fa7a469c` |
| 21 | `lemma` | [quotientEquivSigmaZMod_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/quotientequivsigmazmod-apply.md) | 205 | `result-track:88c791699d0b392ed509872faae50d6d8e82b8eeb0a80985ba2fe754e9161c3d` |
| 22 | `lemma` | [index_eq_sum_minimalPeriod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ZModQuotientGroupPublic.lean/declarations/index-eq-sum-minimalperiod.md) | 211 | `result-track:67f9639880aaf85031603ab1b076bfecb94b333228358b67d0e113491cfbc235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fce9c2b3c95d5f12ab7a958141bda6584d58a3756bc7834cd85179ed82abe74e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/QuotientGroup/Variant4a96de524be27f4ab2c8126f47be959ea4d5b457de3d833fb4e7ddd4f9eb4367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
