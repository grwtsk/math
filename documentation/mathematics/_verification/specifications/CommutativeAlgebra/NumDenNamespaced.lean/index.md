# Verification target: Num Den Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2855423c992416687f62d610390f6b8c1a7fdb90",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NumDen/Varianteed03c72b8e00bd6f1dbaa6b6a147a926bdf480dfacb288f2b3300877f11fef4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NumDenNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NumDenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2855423c992416687f62d610390f6b8c1a7fdb90`.

Source path: `GRWTSK/Algebra/NumDen/Varianteed03c72b8e00bd6f1dbaa6b6a147a926bdf480dfacb288f2b3300877f11fef4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NumDen/Varianteed03c72b8e00bd6f1dbaa6b6a147a926bdf480dfacb288f2b3300877f11fef4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.GCDMonoid` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_reduced_fraction](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/exists-reduced-fraction.md) | 40 | `result-track:a9f4c900af85a2dbe61d1731e699a112b47fe0043d4ea5bd72cecfb896a436a4` |
| 2 | `def` | [num](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num.md) | 53 | `declaration-track:e4dbe9e79f00febfec0c4f7bd8518ed8fdc1815b07551a154b2cd25d91500549` |
| 3 | `def` | [den](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/den.md) | 57 | `declaration-track:b988feafcdc1971ce2c57688123dd90e408fe6d3c03a5851d92719bbb14ae609` |
| 4 | `theorem` | [num_den_reduced](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-den-reduced.md) | 60 | `result-track:0df82460b208f8c1312eae934bbe5306e3277e0152258f4c6df114fefb936f9d` |
| 5 | `theorem` | [mk'_num_den](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/mk-num-den.md) | 64 | `result-track:ad205b76db81f0302701b9bcc3250a8d6f9efe4a21406b7c61587e0cd84e7e04` |
| 6 | `theorem` | [mk'_num_den'](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/mk-num-den-source-edition-2.md) | 68 | `result-track:bb7acaef8fa0a690ae9455d4306c3ec858ee95ca3b5c85164e489536af96b728` |
| 7 | `theorem` | [num_mul_den_eq_num_iff_eq](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-mul-den-eq-num-iff-eq-source-edition-2.md) | 74 | `result-track:70876cb4254ffc738969dfad2660b11e8f6194445a0d36a0a41c89af1efae1b7` |
| 8 | `theorem` | [num_mul_den_eq_num_iff_eq'](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-mul-den-eq-num-iff-eq.md) | 79 | `result-track:2da7d4f271c993bb2e7cdaf2d1550521ecfd58ec8699badbe86bce269dfa7545` |
| 9 | `theorem` | [num_mul_den_eq_num_mul_den_iff_eq](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-mul-den-eq-num-mul-den-iff-eq.md) | 84 | `result-track:74ec22549722d57ba1612055058ebb23275b160fc1cde7bc375d045179b55a8a` |
| 10 | `theorem` | [eq_zero_of_num_eq_zero](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/eq-zero-of-num-eq-zero.md) | 88 | `result-track:eea281213ce573227c8601892a6879688f0b688869f2485bf0fa981bb1fe4f63` |
| 11 | `lemma` | [num_zero](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-zero.md) | 92 | `result-track:f084146b367cef59127bcb0b523782021db22c9031713c9d1a8e1ccda3a22ca6` |
| 12 | `lemma` | [num_eq_zero](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/num-eq-zero.md) | 102 | `result-track:59c2069d6ed5a6b228221d9bcfb2bbee54db68d7b5ba65aba10c4fa0cb6260a6` |
| 13 | `theorem` | [isInteger_of_isUnit_den](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/isinteger-of-isunit-den.md) | 105 | `result-track:5a543dc3267a535817230a33be00612bf1b8d9cb647a4a01e35bf292f24b4094` |
| 14 | `theorem` | [isUnit_den_iff](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/isunit-den-iff.md) | 115 | `result-track:5633b52e520879f919a965778d8878f235b32b55b276db5bb545628740a194b1` |
| 15 | `theorem` | [isUnit_den_zero](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/isunit-den-zero.md) | 130 | `result-track:5061d49786fd47ee840daf7258504f03a6ab6e8569623f72d7a2cf343492d460` |
| 16 | `lemma` | [associated_den_num_inv](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/associated-den-num-inv.md) | 133 | `result-track:12f37751ac4e8ca173e1eb4e0241dc9ac629b73d13b7b462dcbfae52c7692426` |
| 17 | `lemma` | [associated_num_den_inv](../../../../CommutativeAlgebra/NumDenNamespaced.lean/declarations/associated-num-den-inv.md) | 144 | `result-track:be0a43d7149084a64b89ee1b86527b19eea41c3ca87bdbbb716ee8f90797161f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c6f5337e200ebda665170819bb8eb5e1a3e81fa1d35705a87b9f4d7ee95ca91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NumDen/Varianteed03c72b8e00bd6f1dbaa6b6a147a926bdf480dfacb288f2b3300877f11fef4.lean","GRWTSK/_verification/specifications/Algebra/NumDen/Varianteed03c72b8e00bd6f1dbaa6b6a147a926bdf480dfacb288f2b3300877f11fef4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
