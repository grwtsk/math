# Verification target: Gen Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cc027a111bb47906d56d49079a8b28621f0dacf",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cc027a111bb47906d56d49079a8b28621f0dacf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean.json)

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
| 1 | `inductive` | [GenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/generror.md) | 42 | `declaration-track:f0b2c9101018caf1011a5b00b8b6e555794c4fddd8e561a2ada8ec51e29b62ab` |
| 2 | `def` | [Gen.genericFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen-genericfailure.md) | 46 | `declaration-track:15f8f531762fb48125b153d24d545e6f2af15cf66d23a0e4020f521a1643e534` |
| 3 | `instance` | [instPartialOrderExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instpartialorderexceptgenerror.md) | 59 | `declaration-track:8d7023b1d2496bcebb0cc45a3ed89c48e49c2d5b5498e2568a77c0b1fd5b4980` |
| 4 | `instance` | [instCCPOExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instccpoexceptgenerror.md) | 62 | `declaration-track:2bebc756c6b591fe717831edb53d6b788f938baca80095b63dfb836fe2d10309` |
| 5 | `instance` | [instMonoBindExceptGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instmonobindexceptgenerror.md) | 65 | `declaration-track:6190328bf40ce7b74df913a074953f78a5d8e637973f7279a3b3c05987bfc504` |
| 6 | `abbrev` | [Gen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen.md) | 79 | `declaration-track:c1b6d327aa3089685123d6b2d11f2709cbe4b4a32c19ab4f0576fa082044254b` |
| 7 | `instance` | [instMonadLiftGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instmonadliftgen.md) | 81 | `declaration-track:e4dfb8e031064dca328f95475ff4125729b26b9a2b9a36837fb808a052a35266` |
| 8 | `instance` | [instMonadErrorGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instmonaderrorgen.md) | 84 | `declaration-track:4b2838dad45ca27fdd329dc7166fac91460d951fdf418812b1e89bb6fae70358` |
| 9 | `def` | [Gen.genFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen-genfailure.md) | 86 | `declaration-track:6b2116bafa9d3be59a7965eefdac80d61ebd744621fef9aa712b9c9323b447ed` |
| 10 | `def` | [up](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/up.md) | 93 | `declaration-track:298cf010bffc441b58bc40b94b2fee3ab04bae17e7988fe5a730ffa1fa3792d4` |
| 11 | `def` | [down](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/down.md) | 102 | `declaration-track:1618170bb93c2f1984d6188d28981f146e319620699f749038ebedf40855192a` |
| 12 | `def` | [chooseAny](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/chooseany.md) | 109 | `declaration-track:42965ff69594048103f03fc886cf831594030bd896057d6605e78dc3e7c89911` |
| 13 | `def` | [choose](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/choose.md) | 113 | `declaration-track:f58ebb95b6a7418448854b2172b7454daed2f083e889673aba62ee8dcce10031` |
| 14 | `def` | [chooseNatLt](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/choosenatlt.md) | 119 | `declaration-track:39410949928a439a4285555a54fc2d5bdb18b7410ba87f42ce5377eb55916fe4` |
| 15 | `def` | [getSize](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/getsize.md) | 124 | `declaration-track:7eb1882025f77d7b4585d7c3ac27181610756f587f6034606196979030acc79d` |
| 16 | `def` | [resize](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/resize.md) | 128 | `declaration-track:cfe4eb2b13d9600e094189fada7ce4cf44754a616a79632c7ad835bbac677f4c` |
| 17 | `def` | [chooseNat](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/choosenat.md) | 134 | `declaration-track:a04db225caf233e580a0242d131d6caa86070eefe6fcae4ce648f863dbf15e1b` |
| 18 | `def` | [outOfFuel](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/outoffuel.md) | 149 | `declaration-track:d88257d2612ca6a2d982eec33fdc43315598ea996ecf58771e41366eecd3c46d` |
| 19 | `def` | [pick](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/pick.md) | 154 | `declaration-track:d4811c6b077cffec1276fb8be7b95c110fd1328a6359abc5ccd197ea55926c64` |
| 20 | `instance` | [inhabitedGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/inhabitedgen.md) | 163 | `declaration-track:d7455377314c19cd692d103c5eff18c02bc4a7de9117676c5f60b30b83399781` |
| 21 | `def` | [pickDrop](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/pickdrop.md) | 167 | `declaration-track:a839b9303edafac6df923db51c231ae9002b5893b22bbce7239fcc4b10f9ad54` |
| 22 | `def` | [sumFst](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/sumfst.md) | 178 | `declaration-track:27c402022b76a6f960e09e80ed0103379f1882da5c71f131fe78cf9ab6e5c0bb` |
| 23 | `def` | [backtrackFuel](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/backtrackfuel.md) | 181 | `declaration-track:252504456b7b0015aebefe46991a92bfcdd6a2a90705be2a2dbc3702bd01ad97` |
| 24 | `def` | [backtrack](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/backtrack.md) | 194 | `declaration-track:c5440ff28f0014dcfc238147c22c8fd14cd118b37fd94058cc80ae368680aa5d` |
| 25 | `def` | [oneOfWithDefault](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/oneofwithdefault.md) | 202 | `declaration-track:a712efa875b28a66fca5c87ae9c5c84e5ea9846d725a5e17b4ec7bbe28973230` |
| 26 | `def` | [frequency](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/frequency.md) | 211 | `declaration-track:738a7a431ef5338df97fbc1b2788cccc472c4d3f1c823526b2d61f88f37b77da` |
| 27 | `def` | [sized](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/sized.md) | 217 | `declaration-track:1d46a2c7b70323b59f42482d4be1ac98d52b398bbe448ee9a6cc8a3d76639867` |
| 28 | `def` | [arrayOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/arrayof.md) | 224 | `declaration-track:940e53374078658fe26e3aec396270e34fbf9774a46cf29b837169c51ab10186` |
| 29 | `def` | [listOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/listof.md) | 233 | `declaration-track:5e98f9e09e8486b607b3e7363085e89779a132340ffead713bb82c23b49bae07` |
| 30 | `def` | [oneOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/oneof.md) | 237 | `declaration-track:7260e361af5352b8d280dc01599c9985226861d62f38300a2d2f5e2a3099da82` |
| 31 | `def` | [elements](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/elements.md) | 242 | `declaration-track:907219142635c2deb923861edf7ab3285675526ff228bc26e7fe6315b79284a2` |
| 32 | `def` | [permutationOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/permutationof.md) | 249 | `declaration-track:dd2349b33d88816b6f9220ce7c6ffee8b781ffffd1918053374b0d7b39b77c9d` |
| 33 | `def` | [prodOf](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/prodof.md) | 257 | `declaration-track:537ae1ad9ade5eff4a08f3f8a3af9587ce16e35242754376124448a253685793` |
| 34 | `def` | [errorOfGenError](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/errorofgenerror.md) | 264 | `declaration-track:81eab606e6aeecfb67f91f47ecb58a6399438d35ad9d2b6692471703dfab0bb0` |
| 35 | `instance` | [instMonadLiftStateIOGen](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/instmonadliftstateiogen.md) | 270 | `declaration-track:016ddb2eb295b659aef4b79f94a3b846718421944b425e8c9e2345c2810d4b75` |
| 36 | `def` | [Gen.run](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen-run.md) | 274 | `declaration-track:f2be530c42de06f1a27344b9049b9c195dfd3cc9f65ec697da615bb04c076fcf` |
| 37 | `def` | [Gen.printSamples](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen-printsamples.md) | 281 | `declaration-track:0ae7d9fa1a35952eeb4b7131fa4a866643ce3805cda5c9fad25de74025d2c4f1` |
| 38 | `def` | [Gen.runUntil](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/gen-rununtil.md) | 292 | `declaration-track:99a9e8e245a5d276747bc4fb24310813e0ce97897f1c006e9f0434deb8cbfb65` |
| 39 | `def` | [test](../../../../../ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/declarations/test.md) | 307 | `declaration-track:310ddf0e36fc1b598399995f5688f479a47a24cb0375d73ee680503a4f5fce20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc481a4295f4e3e688cb9f8bb40dcf533f8be8ee7e6f9f98ae3f494674e7b663 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
