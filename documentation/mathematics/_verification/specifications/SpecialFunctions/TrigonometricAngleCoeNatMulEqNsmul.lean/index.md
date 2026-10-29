# Verification target: Trigonometric Angle Coe Nat Mul Eq Nsmul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f852d6915c7db18dff201cfba4825ed13e22bf48",
  "lexical_observation_count": 169,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/index.md) · [Full source](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f852d6915c7db18dff201cfba4825ed13e22bf48`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddCircle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Sign` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Angle](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/angle.md) | 29 | `declaration-track:74f671a14be23c47861f04595651bbaec660bbd76fbfa46cf6f36b303fddc507` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/instance.md) | 36 | `declaration-track:2cb65842beca88e2af32d5f5c8f0f93925fa6934fe41908766449fdce599a700` |
| 3 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/instance-source-edition-3.md) | 40 | `declaration-track:86dbd894b6e2dfcf8c1064981cf1f3220ac760aef6ef20c6fc4662cea95d9654` |
| 4 | `def` | [coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe.md) | 48 | `declaration-track:d24832b7d2675147ec5762fa7357b676f4260c489f3e5a3e8d9d707f0ef70da8` |
| 5 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:782666407fb0597eb98426a0127b69e660c4a54b59b776de615c7704e0c1c472` |
| 6 | `instance` | [(anonymous)](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/instance-source-edition-4.md) | 52 | `declaration-track:c11535684b1a9f3c1eb225136068e8621f9a5ee1d91cf19f2cd20b54a584f7b3` |
| 7 | `theorem` | [continuous_coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/continuous-coe.md) | 56 | `result-track:bf6ea648ad159f820a46191096c38b2e370fac94749daed1e2c8678ecca525cd` |
| 8 | `def` | [coeHom](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coehom.md) | 61 | `declaration-track:394b5d20a8a98ca461d86b14a1476b70254610de3cf53dc96bd61e299a31f25f` |
| 9 | `theorem` | [coe_coeHom](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-coehom.md) | 66 | `result-track:6398ff0356768a3c2b093cba8dbed271bf570e2dda9a2d6a6441d98836a48478` |
| 10 | `theorem` | [induction_on](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/induction-on.md) | 73 | `result-track:3492265be80c8005ee5415ae78d4e5887d5ee234bbc83af8b46507d99b0c4aae` |
| 11 | `theorem` | [coe_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-zero.md) | 78 | `result-track:93ec4699b167826800a99681dbc642914e5c75e795487bcb5bec234401668efd` |
| 12 | `theorem` | [coe_add](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-add.md) | 83 | `result-track:9789dcaec663dc9a1bbdebcbe012e4503fad4e26d269fbcc1f97fdf397c192fd` |
| 13 | `theorem` | [coe_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-neg.md) | 88 | `result-track:243bf9db6f97e7d9b765766e26a4a7bc139bd42b082c9e2f6537d93b1687e456` |
| 14 | `theorem` | [coe_sub](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-sub.md) | 93 | `result-track:a10c688f6babea4ba6e961c03fedaaeccab0af381f307497d890ae1b23d84bc7` |
| 15 | `theorem` | [coe_nsmul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-nsmul.md) | 97 | `result-track:4625821ccc493171218fd2dd1e5e506415305009bba4baf6c48dfcca9ffec94f` |
| 16 | `theorem` | [coe_zsmul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-zsmul.md) | 101 | `result-track:c1a95e8481da080a6a722174442c6e712535ea9012967592ed1111c8be3ad8d5` |
| 17 | `theorem` | [coe_nat_mul_eq_nsmul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-nat-mul-eq-nsmul.md) | 106 | `result-track:95b1b2695b2a537c9e18fc9988decdfd3fd297999d644661f3b354de57e91b2c` |
| 18 | `theorem` | [coe_int_mul_eq_zsmul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-int-mul-eq-zsmul.md) | 111 | `result-track:8aac31068163e5ecdc66f5fc5a1724b60fceac58d1504d170b95278e11c5cb08` |
| 19 | `theorem` | [angle_eq_iff_two_pi_dvd_sub](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/angle-eq-iff-two-pi-dvd-sub.md) | 115 | `result-track:e62e943f03dd0c5d93daa757c6a7f642629089981c0562ab04cc2937daeb091f` |
| 20 | `theorem` | [coe_two_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-two-pi.md) | 125 | `result-track:6b256ed653997daa414b512c47ecf5d9e8153f192ac2a3fffd37c2d35631b880` |
| 21 | `theorem` | [neg_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-coe-pi.md) | 130 | `result-track:519b2eb399612db445c785a15594e53c9a7be26e3a2292c565854f1405354f53` |
| 22 | `theorem` | [two_nsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-coe-div-two.md) | 137 | `result-track:12796c8c5dc00a19b43e750fcb455d59ff8a3a177b6057b8fc41e8eea81530a6` |
| 23 | `theorem` | [two_zsmul_coe_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-coe-div-two.md) | 142 | `result-track:292c4e8527dc0d6796d6ed251d2794c5080894e35b34e6f239f961a25755a553` |
| 24 | `theorem` | [two_nsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-neg-pi-div-two.md) | 147 | `result-track:22468a67598b0c90cb8199c725782bc224e4982eb1483188daf6a12679b11601` |
| 25 | `theorem` | [two_zsmul_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-neg-pi-div-two.md) | 152 | `result-track:1ec64ef5c1706753826d99a140b613239a095d92cad440f3809000eea7cc548a` |
| 26 | `theorem` | [sub_coe_pi_eq_add_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sub-coe-pi-eq-add-coe-pi.md) | 156 | `result-track:ab68cddbb99474e352af3550131b152e0a9eb6cb238addfd7b8b3a2e7a6add6f` |
| 27 | `theorem` | [two_nsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-coe-pi.md) | 161 | `result-track:28198e9e17513a0ad87b11a8d8e9c51bc51efa56e1cb1b0ece40710949188029` |
| 28 | `theorem` | [two_zsmul_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-coe-pi.md) | 165 | `result-track:740dfced5970c3d12dbc68d69848cad2083c5fe9898857f09a2129bfc76691d7` |
| 29 | `theorem` | [coe_pi_add_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-pi-add-coe-pi.md) | 169 | `result-track:8838505f628e861eac4a203f6bf20a48bd282ada0208382af07924d517840c80` |
| 30 | `theorem` | [zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/zsmul-eq-iff.md) | 172 | `result-track:c8ff78a22a6306bd5bd05aa44578715ad03df5120919dd486c13a1a472d1f717` |
| 31 | `theorem` | [nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/nsmul-eq-iff.md) | 177 | `result-track:06851becc66ce5273a02577973dc44f940657bd2c6d6cc0b8faffffac60207df` |
| 32 | `theorem` | [two_zsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-eq-iff.md) | 182 | `result-track:930720703cf096805d5406752974fb9a32687b08a4e8e69390680390469492a2` |
| 33 | `theorem` | [two_nsmul_eq_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-eq-iff.md) | 190 | `result-track:903772621d953e16b63bae1f0126872adf61ac4d2aa77f15c5ddbf3c6e6c4a09` |
| 34 | `theorem` | [two_nsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-eq-zero-iff.md) | 194 | `result-track:6ae3e654ea35fa7cbf0899ea8a9b86b03b6d392972f8348a5ab2186031d72c38` |
| 35 | `theorem` | [two_nsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-ne-zero-iff.md) | 198 | `result-track:146a2bdc19b585ebac429b64d444fab2681eadded3c5750c3724a04668427cc8` |
| 36 | `theorem` | [two_zsmul_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-eq-zero-iff.md) | 202 | `result-track:f9ba97ddfe5c3b3c1e9ab4665cfe786bedb4c8565787c210d025e257290362ee` |
| 37 | `theorem` | [two_zsmul_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-ne-zero-iff.md) | 206 | `result-track:5d973579340fe9232e0ff3d33d40be8c3bf4101943e449f643d817cbe02a8668` |
| 38 | `theorem` | [eq_neg_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/eq-neg-self-iff.md) | 210 | `result-track:8097da282bf304584873175571af1b24a7ceb646eab43373634cb7690172ca05` |
| 39 | `theorem` | [ne_neg_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/ne-neg-self-iff.md) | 214 | `result-track:2029896421024c58d6b84f92d25c800cb456ef7d199749a54fc23a49eecf0e9e` |
| 40 | `theorem` | [neg_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-eq-self-iff.md) | 218 | `result-track:5b98c4d0cf87e9a93693a5767cef35daf7437749b8a9323455a020ae61d5768e` |
| 41 | `theorem` | [neg_ne_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-ne-self-iff.md) | 221 | `result-track:eb48c3f45ddf296a8293b94f46cd68ce97eb6c55fbcf3c00e20dd8ee6d65aff6` |
| 42 | `theorem` | [two_nsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-eq-pi-iff.md) | 225 | `result-track:a39bf7b740f49fd03fd3300d422cd8e415ab8e29e8f84d2042980a7344db3223` |
| 43 | `theorem` | [two_zsmul_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-eq-pi-iff.md) | 235 | `result-track:e98effb0ec0ecc62efbd90304c2480b5384555eb39d34a3d10ac0905cddf14aa` |
| 44 | `theorem` | [cos_eq_iff_coe_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-eq-iff-coe-eq-or-eq-neg.md) | 239 | `result-track:3a087c8266010c8f02ec5550ac183bf26e3406f22ac407daa641683278dcb221` |
| 45 | `theorem` | [sin_eq_iff_coe_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-eq-iff-coe-eq-or-add-eq-pi.md) | 263 | `result-track:98abf58ee4c0ee48d5337566c38e8dd8ab6f731dbcdfb423aa4b3637204b4815` |
| 46 | `theorem` | [cos_sin_inj](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-sin-inj.md) | 288 | `result-track:f73f2520a59546bf40e01ef9ab9bcec80dd66e4d6f27075ada0aa77a791613dd` |
| 47 | `def` | [sin](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin.md) | 302 | `declaration-track:61cfc60c5207fd774072f09be1e20d07c38443b43e90a5cdca3b6ff71da7cc50` |
| 48 | `theorem` | [sin_coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-coe.md) | 307 | `result-track:f3f48a9504ac69fafdd1b09ac0cc30a521f89ed2ca386f17601774ae73e3a6fd` |
| 49 | `theorem` | [continuous_sin](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/continuous-sin.md) | 312 | `result-track:7a6e08a4a64a5f62f27a549c618a4a30e2877de17e3b570699682a48fd7e32b2` |
| 50 | `def` | [cos](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos.md) | 317 | `declaration-track:94d7cd37ffd814df472e0eedefb8749d78fc0eeedcb790903b7af529547b9474` |
| 51 | `theorem` | [cos_coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-coe.md) | 322 | `result-track:08221ed08c086d95f784ec940c5f2f8a03905f9f1813b19fc1f02f28ccaa939a` |
| 52 | `theorem` | [continuous_cos](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/continuous-cos.md) | 327 | `result-track:b6ba9abaf0ef3b9fb74e74a7d4d8fc3b90a0feb9902d67175a64b2e47a99df64` |
| 53 | `theorem` | [cos_eq_real_cos_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-eq-real-cos-iff-eq-or-eq-neg.md) | 331 | `result-track:de3be63a569c15eeb0b3c6ebfb23e10cae45238f4f341420eaa3816c39b8d5ea` |
| 54 | `theorem` | [cos_eq_iff_eq_or_eq_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-eq-iff-eq-or-eq-neg.md) | 337 | `result-track:fa83b9f876decb495d9bc6264ad8bea617216d5c8f5aef4952bb30eaaeca86ea` |
| 55 | `theorem` | [sin_eq_real_sin_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-eq-real-sin-iff-eq-or-add-eq-pi.md) | 342 | `result-track:fcba971681dd15a8ac52cb526a3b1d3c3d6c2a7aa942a23498d330de932a01a3` |
| 56 | `theorem` | [sin_eq_iff_eq_or_add_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-eq-iff-eq-or-add-eq-pi.md) | 348 | `result-track:981f0d44cec5728a0dbf4af0e2cfb969f4464889968649ad18930219205e6a81` |
| 57 | `theorem` | [sin_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-zero.md) | 354 | `result-track:b9baf30e5f7b4bc49f14ca5758790c86781442db823a77b80a5d8db0a21a43a2` |
| 58 | `theorem` | [sin_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-coe-pi.md) | 358 | `result-track:9789bf68a6b5b45858fb57a904c7cbd512113ee02e0d2d3b3a6eb147ad87d175` |
| 59 | `theorem` | [sin_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-eq-zero-iff.md) | 361 | `result-track:de668e3276b2a5d0d3998e84d091133993533cbd5f1fc81f0f80bd989b7105f8` |
| 60 | `theorem` | [sin_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-ne-zero-iff.md) | 367 | `result-track:60e566803b72ea223ff1b4338026579e8c0ba3a558bc13ac40b9093551c78a18` |
| 61 | `theorem` | [sin_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-neg.md) | 372 | `result-track:1de72a899b3adb6cbc28238755345775ba11363cf158f33c79c971f019dc2ba2` |
| 62 | `theorem` | [sin_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-antiperiodic.md) | 377 | `result-track:fb54e2ce04f869d6473d48b28d6e97b6c4aae0b05608435e678afc5580930b64` |
| 63 | `theorem` | [sin_add_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-add-pi.md) | 384 | `result-track:264267912cedcfb5b00ef72bed14e583106da008ed752cbb00b633cd34d39f3a` |
| 64 | `theorem` | [sin_sub_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-sub-pi.md) | 389 | `result-track:e6883f0f8107ec575504749ef10e9c858395f8e5dd56c95f1d8d7c6d41057f28` |
| 65 | `theorem` | [cos_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-zero.md) | 394 | `result-track:fb73550dee2e914b94e543ed05fc72cdc2188876eb7591957eaa921e95222f17` |
| 66 | `theorem` | [cos_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-coe-pi.md) | 398 | `result-track:29f23d977e4f6890241fd10393708a0b3586acbcb54ac71e00690b453e1658e9` |
| 67 | `theorem` | [cos_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-neg.md) | 402 | `result-track:15ca4abc1a74b6568e36707b5acb5d48137d7abaf10d6c8c4e5238f9267a709b` |
| 68 | `theorem` | [cos_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-antiperiodic.md) | 407 | `result-track:5b3be0908b20370e444c9f132e657ea39fc9fec59afd19b117427970bfe8b168` |
| 69 | `theorem` | [cos_add_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-add-pi.md) | 414 | `result-track:eb528bd4cc387375f21f597d035bc09b8de17e7bce1d3f1bb37cda549cd85066` |
| 70 | `theorem` | [cos_sub_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-sub-pi.md) | 419 | `result-track:4f0f9cbef11e870cf15dffdc6bc853636ec399e90edb3e222e3dff56b841f7a9` |
| 71 | `theorem` | [cos_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-eq-zero-iff.md) | 423 | `result-track:4e2d03975ae05102163d8050521a8c9e96ad0ce1e51206308dfc72e642d3a1a4` |
| 72 | `theorem` | [sin_add](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-add.md) | 427 | `result-track:ab9dfdb72600a4032a2c9bc831c601d00d00ac5dba83ccd8c0e5fa3a9b060264` |
| 73 | `theorem` | [cos_add](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-add.md) | 433 | `result-track:0575b5249d6f36ee93bcb7e7844aacfdcfbfbd104f612c5524de7ee795f9358c` |
| 74 | `theorem` | [cos_sq_add_sin_sq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-sq-add-sin-sq.md) | 440 | `result-track:f3fb28478318f8dd68a09f56d3de00114fdc5336f45cfc2d1d9af03ed1805848` |
| 75 | `theorem` | [sin_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-add-pi-div-two.md) | 445 | `result-track:ae01d78299f86ea382ae315c8f10c3b40b363d881a8493cf209907fae615f424` |
| 76 | `theorem` | [sin_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-sub-pi-div-two.md) | 450 | `result-track:5db8b665e8bd8e8373cb703945a215bc19e816ea74ff08a1a6165f5987ebf68a` |
| 77 | `theorem` | [sin_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-pi-div-two-sub.md) | 455 | `result-track:149434236e93f23d8d65ed84922d4a918e430c916c1dc411a846cb5f20ec81db` |
| 78 | `theorem` | [cos_add_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-add-pi-div-two.md) | 460 | `result-track:51b1695930c52edf4d559c275ee901a4db5ada4f3e38f3ca655069ef55c67280` |
| 79 | `theorem` | [cos_sub_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-sub-pi-div-two.md) | 465 | `result-track:4ac358b1af70bd8d188e469c9bc27a25756012d970645da8a22aea28526fb3c4` |
| 80 | `theorem` | [cos_pi_div_two_sub](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-pi-div-two-sub.md) | 470 | `result-track:5cbaca14a6c31f68f6ebe5a40f4435fa09e082ea09a1c3f62ca25804b9635093` |
| 81 | `theorem` | [abs_sin_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-sin-eq-of-two-nsmul-eq.md) | 475 | `result-track:ca1d619b62b609f3c1b4b0c5382b621783990c4c8d14586d5dcee02737df5ded` |
| 82 | `theorem` | [abs_sin_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-sin-eq-of-two-zsmul-eq.md) | 483 | `result-track:bc1a5982d774ee2e64862d9a0b8ea7135fd0cadae753b1655beffbadc9214bf8` |
| 83 | `theorem` | [abs_cos_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-cos-eq-of-two-nsmul-eq.md) | 489 | `result-track:c7e7f0ccc51a1eddfe723e8ab60192ca183836c662748a4bfb52c051fc6e9991` |
| 84 | `theorem` | [abs_cos_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-cos-eq-of-two-zsmul-eq.md) | 497 | `result-track:c339acb44c49dfeda13f3e6817e1adc8e0ea529b7231f75aecc86467ace576ab` |
| 85 | `theorem` | [coe_toIcoMod](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-toicomod.md) | 504 | `result-track:51e13cc697c9af5e834a8967753150cc9ff1264b39fbb4bfb195b906a862fb49` |
| 86 | `theorem` | [coe_toIocMod](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-toiocmod.md) | 511 | `result-track:df11729c257daa9a5c6fa16f7a73dd996073bb53d886535ac117ffb9d158a14a` |
| 87 | `def` | [toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal.md) | 518 | `declaration-track:613a484e993777e593c7a03995fa5b07b06142f2fe26d16bd51c799fd4370d3c` |
| 88 | `theorem` | [toReal_coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe.md) | 522 | `result-track:31eb8270780c20a69302c8f4497faffd6016f2ff12936ef0b138fcf75ab65d51` |
| 89 | `theorem` | [toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe-eq-self-iff.md) | 526 | `result-track:8c34dd3bb2b206c96db21bcf9baee562904862c45414aec36fff7e722a26621f` |
| 90 | `theorem` | [toReal_coe_eq_self_iff_mem_Ioc](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe-eq-self-iff-mem-ioc.md) | 532 | `result-track:08c6fe4d89eeed9be6262c44ed97babebebbc2e7c8320879b83b1fd42e97b723` |
| 91 | `theorem` | [toReal_injective](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-injective.md) | 536 | `result-track:55f120584dee05744974f72a33cdc7af4d824b5f0c002281d1057995992210f7` |
| 92 | `theorem` | [toReal_inj](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-inj.md) | 545 | `result-track:c2c60397318d59a5cbea191c5cbafa20e24a349d04b26c3632b012b81ef9dfac` |
| 93 | `theorem` | [coe_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-toreal.md) | 550 | `result-track:be582f2bc05b3910b02254abab82d1849f682a2819ea9a5debf00ca257c51031` |
| 94 | `theorem` | [neg_pi_lt_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-pi-lt-toreal.md) | 555 | `result-track:715ad7f65cafb953bdc0487c43d3e27d9982f58212095d277e9240bfa020a5a9` |
| 95 | `theorem` | [toReal_le_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-le-pi.md) | 560 | `result-track:13f4796717bf536f5309295557bf194c5831b0b3635abb304f3a4230b3ef5057` |
| 96 | `theorem` | [abs_toReal_le_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-toreal-le-pi.md) | 566 | `result-track:cb2548a9a935f503f5d3740416ac7eda17a2f522060fe3f72884ab6eae774980` |
| 97 | `theorem` | [toReal_mem_Ioc](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-mem-ioc.md) | 570 | `result-track:6c977bc008f6850487d4998078ea8b5a53a7b0a4779b29057e94d3863f2807ce` |
| 98 | `theorem` | [toIocMod_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toiocmod-toreal.md) | 575 | `result-track:3ac74100c24bafd4e51e9414cf9cde02625c90e9902c5292aafdf9110ad74622` |
| 99 | `theorem` | [toReal_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-zero.md) | 582 | `result-track:37da9d9cb60c06d303102b1da096e09a6ce4b2508b54eb97fa3cbec8e7de7ffc` |
| 100 | `theorem` | [toReal_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-eq-zero-iff.md) | 588 | `result-track:b8bc0766b3ec25f4e300df5024863c3c4a1199e68f06aea77ae26af7041ccdff` |
| 101 | `theorem` | [toReal_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-pi.md) | 594 | `result-track:963cb206559e757c3e4594393543372b3f67e691487ea445f0244d1ccbbe0146` |
| 102 | `theorem` | [toReal_eq_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-eq-pi-iff.md) | 600 | `result-track:196142945b9376ecc64c8c996d147be1a2962d091d335684dd398cbab34c25b5` |
| 103 | `theorem` | [pi_ne_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/pi-ne-zero.md) | 603 | `result-track:15f0408181f96ba79a3749406647098578b89386f3b8cb57cb6a7cb20a5b17b2` |
| 104 | `theorem` | [toReal_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-pi-div-two.md) | 609 | `result-track:a8b327a9f89543257383e48824db2ce2f4204476b6615e43d002a3d1befd073f` |
| 105 | `theorem` | [toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-eq-pi-div-two-iff.md) | 614 | `result-track:d64d0bce784ef99a7d51a48a89c1bcbf11b9a55307c92ae2ccb241c26f85277b` |
| 106 | `theorem` | [toReal_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-neg-pi-div-two.md) | 619 | `result-track:dba9d10416a3aaf3cfdc6e6a0df8558c5e253100ee90eb8279897e8affa8c932` |
| 107 | `theorem` | [toReal_eq_neg_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-eq-neg-pi-div-two-iff.md) | 624 | `result-track:99eb84b4d9579fdd66ce84e0980f6598d1796a295fe66a1971a0dcabb97f481f` |
| 108 | `theorem` | [pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/pi-div-two-ne-zero.md) | 628 | `result-track:11a83076ef05a2b66a1155b6c9577e1382f829333aa3e28d504b54431bbf6b33` |
| 109 | `theorem` | [neg_pi_div_two_ne_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-pi-div-two-ne-zero.md) | 633 | `result-track:c0f74783da951acecac21722394f5d731833d5ed2bf36e1e4943d538699d41ec` |
| 110 | `theorem` | [abs_toReal_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-toreal-coe-eq-self-iff.md) | 638 | `result-track:2e046c50b905748f37fdc9f10ae571da14424ac301e4a8c356ada2d6edb744fd` |
| 111 | `theorem` | [abs_toReal_neg_coe_eq_self_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-toreal-neg-coe-eq-self-iff.md) | 644 | `result-track:c9263101e46882c27ba35f3a0c8fd37392eeedd3d37ab96d557c702cf970bec5` |
| 112 | `theorem` | [abs_toReal_eq_pi_div_two_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-toreal-eq-pi-div-two-iff.md) | 653 | `result-track:47b0bb8bac875c53eaee2e160a5aa79908e5f815828e034481747da34400d98e` |
| 113 | `theorem` | [nsmul_toReal_eq_mul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/nsmul-toreal-eq-mul.md) | 659 | `result-track:7c31ae5b6d408b8067a20361351f806c465b12ef0693a991b77221ebf97e97c5` |
| 114 | `theorem` | [two_nsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-toreal-eq-two-mul.md) | 667 | `result-track:2c1bbd95484ba06fe2fe9607c91162901441e89f8080791636505bd5b0f0b48b` |
| 115 | `theorem` | [two_zsmul_toReal_eq_two_mul](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-toreal-eq-two-mul.md) | 672 | `result-track:b9c3c488639fec7b17fa67ec11c69827ee48b11fb1c8d73ec9a6ef0b9142a41c` |
| 116 | `theorem` | [toReal_coe_eq_self_sub_two_mul_int_mul_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe-eq-self-sub-two-mul-int-mul-pi-iff.md) | 677 | `result-track:b245262016bd9ab89e45c1b67f4ee2a155593db41f3eace27bf955eb87f5e798` |
| 117 | `theorem` | [toReal_coe_eq_self_sub_two_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe-eq-self-sub-two-pi-iff.md) | 684 | `result-track:4071f8474a67037a1eca2d8937a1acd2e62b38cc3a4d67b27246f3b05334a859` |
| 118 | `theorem` | [toReal_coe_eq_self_add_two_pi_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-coe-eq-self-add-two-pi-iff.md) | 689 | `result-track:dd8ca813112071459d66bc57dab582283552c4472e2d12389392ce2dc966b23a` |
| 119 | `theorem` | [two_nsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-toreal-eq-two-mul-sub-two-pi.md) | 694 | `result-track:8f7e6eee2d637ca4b46e82804048892a49bf5db153017e18751a762086e22240` |
| 120 | `theorem` | [two_zsmul_toReal_eq_two_mul_sub_two_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-toreal-eq-two-mul-sub-two-pi.md) | 703 | `result-track:1027182222bad287978792a09ea52ce05412ebe8486dbb8b862dcc5533533425` |
| 121 | `theorem` | [two_nsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-nsmul-toreal-eq-two-mul-add-two-pi.md) | 708 | `result-track:4ea3d6c137f2771b9e1a27f01ffb69c26d3770f0e44fffdfe94a3977dce53a96` |
| 122 | `theorem` | [two_zsmul_toReal_eq_two_mul_add_two_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/two-zsmul-toreal-eq-two-mul-add-two-pi.md) | 717 | `result-track:572ddfad5dd15a65ec2c5fc8fc8cba6da3527dc02f780ae4787898f8a592290c` |
| 123 | `theorem` | [sin_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sin-toreal.md) | 723 | `result-track:11522e73af081fe27190018eb5e8c347234babf2062efb49cd05db6a52ff4eb3` |
| 124 | `theorem` | [cos_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-toreal.md) | 728 | `result-track:83b6fc5aa6a8fd2f74a0b64343109da17433be1b44eb20c211809945098cd485` |
| 125 | `theorem` | [cos_nonneg_iff_abs_toReal_le_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-nonneg-iff-abs-toreal-le-pi-div-two.md) | 732 | `result-track:d2a0e65d77a2c063efcd2faf3281691226771ea4f381929b19edc4d9012a03e6` |
| 126 | `theorem` | [cos_pos_iff_abs_toReal_lt_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-pos-iff-abs-toreal-lt-pi-div-two.md) | 747 | `result-track:5e5c96dd8a63394b20884764d0b486518e72b1a380bacfa1b6d1cc046af5865c` |
| 127 | `theorem` | [cos_neg_iff_pi_div_two_lt_abs_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/cos-neg-iff-pi-div-two-lt-abs-toreal.md) | 754 | `result-track:4be5f56530f695c7352d17c36ed69345e19ff4d33ad1559f0cbe35cdd9795637` |
| 128 | `theorem` | [abs_cos_eq_abs_sin_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-cos-eq-abs-sin-of-two-nsmul-add-two-nsmul-eq-pi.md) | 758 | `result-track:e1de6fe1a3fe14d2fcb4535b6d40756ee64a13d548d3305f7d10c30535381a32` |
| 129 | `theorem` | [abs_cos_eq_abs_sin_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/abs-cos-eq-abs-sin-of-two-zsmul-add-two-zsmul-eq-pi.md) | 764 | `result-track:414014e1857b3679fe536bbb4e357fd70e29ec587eeafab027ef982c652510e7` |
| 130 | `def` | [tan](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan.md) | 771 | `declaration-track:02ca8e6bdc86e515e698fd391b14be883fba363c367f681948a28f7324ca7d08` |
| 131 | `theorem` | [tan_eq_sin_div_cos](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-eq-sin-div-cos.md) | 775 | `result-track:4c9ef06d6f15fce546949c3949e5786ab5f8f90785b786d371de77b283886c6c` |
| 132 | `theorem` | [tan_coe](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-coe.md) | 780 | `result-track:20cb0d03269df0bc5eb0be352854cc99f46a54193c25f41af9d6f0c6aaa4e09a` |
| 133 | `theorem` | [tan_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-zero.md) | 785 | `result-track:291a77b89159fbe75208157a009cfe850afe15aa4a393d05d9722ecb9f35035e` |
| 134 | `theorem` | [tan_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-coe-pi.md) | 789 | `result-track:8c9d528e01e65c1caa9e28ed8fc0e4a1609cacedff480ec1ed290ccf39256ea7` |
| 135 | `theorem` | [tan_periodic](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-periodic.md) | 792 | `result-track:11f909a715af0d9950d4a94faafccd105f62695ac22ca779eaba5cc69998ccf4` |
| 136 | `theorem` | [tan_add_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-add-pi.md) | 800 | `result-track:93525dbb052ceca78776aade98ec14b042632755458bcdf727853e67218f4758` |
| 137 | `theorem` | [tan_sub_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-sub-pi.md) | 805 | `result-track:db87aebc38edf5e8639a2be441f3e692cfd6aff0abeb410feea8c3bf67cab357` |
| 138 | `theorem` | [tan_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-toreal.md) | 810 | `result-track:a77dec2fbbd5e0ae3283c52d48b8855877ea1421d7d44cd3db101652ed246b8f` |
| 139 | `theorem` | [tan_eq_of_two_nsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-eq-of-two-nsmul-eq.md) | 814 | `result-track:acee5d255a55cf4423415ee75899c421ce3bcea964bc5977d0eef8d5e5cb5849` |
| 140 | `theorem` | [tan_eq_of_two_zsmul_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-eq-of-two-zsmul-eq.md) | 821 | `result-track:3f1e92fbb193e13ff881057dcce64ffe45e24d10d101ae9caf53c7aafc19edf4` |
| 141 | `theorem` | [tan_eq_inv_of_two_nsmul_add_two_nsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-eq-inv-of-two-nsmul-add-two-nsmul-eq-pi.md) | 826 | `result-track:cdeb761af797d9eab018854af6ef59d4e14afd62e633230cf58c3974210f0712` |
| 142 | `theorem` | [tan_eq_inv_of_two_zsmul_add_two_zsmul_eq_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/tan-eq-inv-of-two-zsmul-add-two-zsmul-eq-pi.md) | 839 | `result-track:fc27a103d85a2550e9bdfa184def40440661e21d8a7643c893c286af391f647c` |
| 143 | `def` | [sign](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign.md) | 848 | `declaration-track:bdcf895bb6704900a11233001652cd56ea93f6a3d9468fc02abab803f5164aab` |
| 144 | `theorem` | [sign_zero](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-zero.md) | 853 | `result-track:3f760ed5b7dbecc521d62535706132e303ac4dc80062bfe51f4dbb60fdd1130b` |
| 145 | `theorem` | [sign_coe_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-coe-pi.md) | 858 | `result-track:b32c79b06c2cd31e0b37779889d211c8a16a2cc45a779e47f86b23a9a703d579` |
| 146 | `theorem` | [sign_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-neg.md) | 862 | `result-track:c05556adc8b2f9f7d301780ce5dc8c264a919837fa0f39039356c8a2195a28d9` |
| 147 | `theorem` | [sign_antiperiodic](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-antiperiodic.md) | 866 | `result-track:08db55ef53043d6ef5fe5fa0aa07c6761376e4379443c889a5d8fcede98a7936` |
| 148 | `theorem` | [sign_add_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-add-pi.md) | 871 | `result-track:9a24bcdc5071f2ab3e0e377ee1287bf53cee113d892da47b64c12f50eb3da5ad` |
| 149 | `theorem` | [sign_pi_add](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-pi-add.md) | 876 | `result-track:c3d6d522a25b6979c116284b83ad52a71cc0edf491b419e08259aa77b7da7a82` |
| 150 | `theorem` | [sign_sub_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-sub-pi.md) | 880 | `result-track:4de5eb7ada040a904d93ab94fb88f20096cc684bea24d21ac3369676684b3b85` |
| 151 | `theorem` | [sign_pi_sub](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-pi-sub.md) | 885 | `result-track:f2372e28423bacfc5c84d2efca55b45d3004365f355575545c5f214c74c73072` |
| 152 | `theorem` | [sign_eq_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-eq-zero-iff.md) | 889 | `result-track:44d79ad4e5ecc777f73400d6a6da54c951d7541211c58f399ae033724f8e425b` |
| 153 | `theorem` | [sign_ne_zero_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-ne-zero-iff.md) | 893 | `result-track:a047974d6271db0f2fddc0ec1c41833475c64ddf4c518126ded598ad96d4678e` |
| 154 | `theorem` | [toReal_neg_iff_sign_neg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-neg-iff-sign-neg.md) | 897 | `result-track:763398ae785edf459dada41bcc3d18f26b2cef5721aa5931b5b6da770a15b080` |
| 155 | `theorem` | [toReal_nonneg_iff_sign_nonneg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/toreal-nonneg-iff-sign-nonneg.md) | 907 | `result-track:c2509c82c249210ad7eaac45d971a86e3a8c5be5a852e3cdf7addb7dc88daf42` |
| 156 | `theorem` | [sign_toReal](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-toreal.md) | 919 | `result-track:549c4105093d0fe8e55de7e26522c3a5988331e9a3e324592f5f9c5d94dde66b` |
| 157 | `theorem` | [coe_abs_toReal_of_sign_nonneg](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/coe-abs-toreal-of-sign-nonneg.md) | 928 | `result-track:875c4aaf796e2b9a9e2aff9f840e190205aaef445ad2ee3bdff047961e6fd5e4` |
| 158 | `theorem` | [neg_coe_abs_toReal_of_sign_nonpos](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/neg-coe-abs-toreal-of-sign-nonpos.md) | 932 | `result-track:0da9d73da02eabeafce2b71822079ecf55c177d9f9be664a391a2f29cc47e583` |
| 159 | `theorem` | [eq_iff_sign_eq_and_abs_toReal_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/eq-iff-sign-eq-and-abs-toreal-eq.md) | 940 | `result-track:4a693d02ed59bf558f375db8adda6cfcc3ad41f6af4244cbae6467baa8d3628a` |
| 160 | `theorem` | [eq_iff_abs_toReal_eq_of_sign_eq](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/eq-iff-abs-toreal-eq-of-sign-eq.md) | 961 | `result-track:3c726c8baebcebd8f1f8c955680db7cb0bda03ec01d65ef99df01e4ca895cd6b` |
| 161 | `theorem` | [sign_coe_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-coe-pi-div-two.md) | 966 | `result-track:1789eaa4e504bc56fd33a700d8d4083ded61140a0055a556ea4e8eb3824ee220` |
| 162 | `theorem` | [sign_coe_neg_pi_div_two](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-coe-neg-pi-div-two.md) | 971 | `result-track:22708631d36e5ab36611ab21ba0cbfe2b97a6f474fddef78227c0db5d8e5b520` |
| 163 | `theorem` | [sign_coe_nonneg_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-coe-nonneg-of-nonneg-of-le-pi.md) | 975 | `result-track:cf3c76548b3d042f3a1a6d60e37fb760c6e2532b0be73741d3b57849ac6196ba` |
| 164 | `theorem` | [sign_neg_coe_nonpos_of_nonneg_of_le_pi](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-neg-coe-nonpos-of-nonneg-of-le-pi.md) | 981 | `result-track:e2d4c33406b71d1d14b449e40954dbb857aefe9568895e961174149235eb5091` |
| 165 | `theorem` | [sign_two_nsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-two-nsmul-eq-sign-iff.md) | 987 | `result-track:9de9aef30317f483a5a08adf142c8054f1f2cba64b1d5aa4996edd5bb144c4ed` |
| 166 | `theorem` | [sign_two_zsmul_eq_sign_iff](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-two-zsmul-eq-sign-iff.md) | 1029 | `result-track:f92989ac7ca98e08e4455a7129f108b1b850986b771fd4f1303d709c3ec5d82f` |
| 167 | `theorem` | [continuousAt_sign](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/continuousat-sign.md) | 1034 | `result-track:a58af238eaf3638653d377432166aa2a6e6bcc422eb0532b4d50eb782a10942b` |
| 168 | `theorem` | [_root_.ContinuousOn.angle_sign_comp](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/root-continuouson-angle-sign-comp.md) | 1038 | `result-track:77a80afd7fccfdc92d3823df2c7c8e87c82a5d48fe1cf22417e4cb37ea0d0f03` |
| 169 | `theorem` | [sign_eq_of_continuousOn](../../../../SpecialFunctions/TrigonometricAngleCoeNatMulEqNsmul.lean/declarations/sign-eq-of-continuouson.md) | 1048 | `result-track:032dabd2ff72d4951c5c6faeaded07264df7c926ecf94b5cbec1f21c1aa5c149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=102492a88ac42dd37af8b78c38453cb907a41910153e85e8e451a79cafa5578b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variant0010a27962f5a526debc05fdd5012ffe25a28e110dcf3e551213bef55471304f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
