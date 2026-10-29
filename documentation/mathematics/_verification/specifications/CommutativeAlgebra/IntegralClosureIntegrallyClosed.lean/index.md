# Verification target: Integral Closure Integrally Closed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88fb3e802a23c22bf0870eb03f89077f2de0f04c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88fb3e802a23c22bf0870eb03f89077f2de0f04c`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Integral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosedin.md) | 61 | `declaration-track:4ea0962caae47c745064ba8f288c3579997f9f1ca53a001efea6f476e8729168` |
| 2 | `abbrev` | [IsIntegrallyClosed](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosed.md) | 69 | `declaration-track:3c5fc198408a8e035ba76d036819e9c2c5c35c50ef95217761ebb21038090ce4` |
| 3 | `theorem` | [AlgHom.isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/alghom-isintegrallyclosedin.md) | 77 | `result-track:04c10bbd86d23f7d11d868375bf269ed0f1645cb03857a7da15f43559049ddef` |
| 4 | `theorem` | [AlgEquiv.isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/algequiv-isintegrallyclosedin.md) | 90 | `result-track:9eb50af36ac4dc4288efbc7a9a8b05cfdb7ac04b69f72651c166ccba3d235e71` |
| 5 | `theorem` | [isIntegrallyClosed_iff_isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosed-iff-isintegrallyclosedin.md) | 97 | `result-track:55fdea72d843a4afa4f5be53d670b759052cd891ab1767966d23bd762524340f` |
| 6 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosed-iff-isintegralclosure.md) | 102 | `result-track:9ec40d628487a0bcf34515a2f1d6a56b1e6f39f6442809bf1829e5ef86e3e845` |
| 7 | `theorem` | [isIntegrallyClosedIn_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosedin-iff.md) | 106 | `result-track:6dee7523425696079ad2dea535cfea0503398d93dacc9f29f1eb578e8cc1a7e4` |
| 8 | `theorem` | [isIntegrallyClosed_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosed-iff.md) | 120 | `result-track:d77e528d32b148d5a34c61e12645df3a2d880f74041368a0d9edf1c1c9f7c549` |
| 9 | `theorem` | [algebraMap_eq_of_integral](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/algebramap-eq-of-integral-source-edition-2.md) | 131 | `result-track:cc194eab5c773d7987e8b4653ab0b5732651e8463db2356b8c30b16030e1b055` |
| 10 | `theorem` | [isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegral-iff-source-edition-2.md) | 135 | `result-track:b6b2f41f928393aea8d96a69a575ebea5e69055422a7bfc02e5d7376ea640344` |
| 11 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/exists-algebramap-eq-of-isintegral-pow-source-edition-2.md) | 139 | `result-track:7afcadefaa0fc25b33b1fac6e78236d43c372c11de1ffa8986ad4f57f4bfacb5` |
| 12 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra-source-edition-2.md) | 144 | `result-track:ba30c2debc215f4f74cc23246928084444e406fb822a7f67a21fc7d1083f1ad0` |
| 13 | `theorem` | [integralClosure_eq_bot_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/integralclosure-eq-bot-iff.md) | 151 | `result-track:3f61b888f0ade48bd0dbcdb8e13fa8b2c27db8ed73d25a3605fdd4ff4ab5a759` |
| 14 | `theorem` | [integralClosure_eq_bot](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/integralclosure-eq-bot.md) | 166 | `result-track:a1716231ef432cedca44242dba8b2096d5d5568416345e48a1d152a4fefa75dd` |
| 15 | `lemma` | [of_isIntegralClosure](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/of-isintegralclosure.md) | 173 | `result-track:d4135eca4dd8e003e32125ac2c28b03d75581a379bf23858fb7cca07824f7da7` |
| 16 | `lemma` | [_root_.IsIntegralClosure.of_isIntegrallyClosedIn](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/root-isintegralclosure-of-isintegrallyclosedin.md) | 181 | `result-track:630c229b62e9dbd577d958543bd7faec1d5154e4d9829eb7994893f2a6fcfb4c` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/instance.md) | 199 | `declaration-track:5247d85c1734b607b092f8d11a530300fd186dc0dd63e1f7e4fdd96b128963d5` |
| 18 | `theorem` | [algebraMap_eq_of_integral](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/algebramap-eq-of-integral.md) | 202 | `result-track:85c5e7ec0fbabfc008bf16f296dd8314a1c631e034a0dd911b8c0d72d3313134` |
| 19 | `theorem` | [isIntegral_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegral-iff.md) | 206 | `result-track:3f7f7152e1eb42a81191ee578c966ea16e962b3a4d159a5ee37f267ba912aa0e` |
| 20 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/exists-algebramap-eq-of-isintegral-pow.md) | 210 | `result-track:6cd233c807ef7e21e07b60756821bae19b05731237883cc66473f0b250eba0f4` |
| 21 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra.md) | 214 | `result-track:a4ceb08b6110913e3844a375be3fe04addb7e37d34b157558cea647e68b7c0e2` |
| 22 | `theorem` | [of_equiv](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/of-equiv.md) | 219 | `result-track:1d5407f6908c182d35625eea55445cf9cf85975418200bbb087a37868e9dcfd0` |
| 23 | `instance` | [_root_.IsIntegralClosure.of_isIntegrallyClosed](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/root-isintegralclosure-of-isintegrallyclosed.md) | 230 | `declaration-track:1ba9c84b79fbf486e7dd81c130dc518ef478212cfaf70693955a27dd9954123c` |
| 24 | `theorem` | [integralClosure_eq_bot_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/integralclosure-eq-bot-iff-source-edition-2.md) | 237 | `result-track:57aee4e9148416aec48192f7e996b7aec77cf4c3a2c8fdce5dbf2c456407958f` |
| 25 | `theorem` | [pow_dvd_pow_iff](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/pow-dvd-pow-iff.md) | 242 | `result-track:c966069723c773a8ee5b0ea33eb7fcfe7393df1a606cfede7ee5b7fdfc28007d` |
| 26 | `theorem` | [integralClosure_eq_bot](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/integralclosure-eq-bot-source-edition-2.md) | 266 | `result-track:dc7fe17ee9e3593071bff1f33bcb9c7e574f3e7138d2b28dfbf768c983333b95` |
| 27 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosedoffiniteextension.md) | 281 | `result-track:7c80cfc3bf5be75ee8906ac20df51fb4e75e067075c3e9078f1f271d01b59cd5` |
| 28 | `lemma` | [isIntegrallyClosed_of_isLocalization](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/isintegrallyclosed-of-islocalization.md) | 292 | `result-track:5cf39a8ce806f6442f16cef5b66d14217a71f900dea12e822c7cf76694b3b5ab` |
| 29 | `instance` | [Field.instIsIntegrallyClosed](../../../../CommutativeAlgebra/IntegralClosureIntegrallyClosed.lean/declarations/field-instisintegrallyclosed.md) | 314 | `declaration-track:126b1c140e795348974f56e851279b263ce00703085636c3b9ad91ec399ef25d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40ad438ef5de4c0643ed14f02e26002ec96e7cc24674ddcd77a3868da71c4e83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean","GRWTSK/_verification/specifications/Algebra/IntegrallyClosed/Variant87d046a473a88405df6e5c23b7c67013503337831073e6c237d4f2693c415433.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
