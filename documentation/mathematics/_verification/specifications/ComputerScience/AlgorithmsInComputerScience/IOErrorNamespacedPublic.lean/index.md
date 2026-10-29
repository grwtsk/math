# Verification target: IOError Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef33f8b03204d703746689500152544fd7ef3435",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef33f8b03204d703746689500152544fd7ef3435`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Modify` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IO.Error](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/io-error.md) | 32 | `declaration-track:efdfce4448e4da3c7d0661d1a3ba2acb6674f8ab7a88adc509aaea9a99c156cc` |
| 2 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:d7cb71cdcf95e969b23ab9c2b47a278bc99486a0936d2070729865481c52107d` |
| 3 | `def` | [IO.userError](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/io-usererror.md) | 159 | `declaration-track:9807b8e41eb49e6ff9d878ff7ee59fe40938a8dd35020d3801c0b510db0a57c8` |
| 4 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:96b572f5a9078ac749f25bfe0537169dae5c70f9254ec2c60456ab8166a347b2` |
| 5 | `def` | [mkAlreadyExistsFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkalreadyexistsfile.md) | 167 | `declaration-track:86a9d4799b1c8d1ac325302f77b9b504b87527f74e73db0b3f9a3a8cae1121ec` |
| 6 | `def` | [mkEofError](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkeoferror.md) | 171 | `declaration-track:cc08bf2e62097193c1f1338466c46520223c24a726130aaef1ce87a96d52df5d` |
| 7 | `def` | [mkInappropriateTypeFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkinappropriatetypefile.md) | 175 | `declaration-track:070f69bee2cf898b10deb79646a37ede79f24f925dd8a95069e46cfa301cd7c4` |
| 8 | `def` | [mkInterrupted](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkinterrupted.md) | 179 | `declaration-track:17c881c59d19680371bb8b31957d2c07089b9f515364ab1722116653b4b99d06` |
| 9 | `def` | [mkInvalidArgumentFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkinvalidargumentfile.md) | 183 | `declaration-track:a9670549ba22fe38c60338db91036adbbd2ea845d4014e436386fe0aff16244d` |
| 10 | `def` | [mkNoFileOrDirectory](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mknofileordirectory.md) | 187 | `declaration-track:f75693b8024542924143050fd9bbb922074a721517c0825080cd89c2b8227d30` |
| 11 | `def` | [mkNoSuchThingFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mknosuchthingfile.md) | 191 | `declaration-track:3692de42f80f9e638f15f9f1b346faea413c5e8f418aa1da4de18b961cb3518e` |
| 12 | `def` | [mkPermissionDeniedFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkpermissiondeniedfile.md) | 195 | `declaration-track:28a94e45682929acc81c92289e6b3291e42c46fd22ca6a7b80c6f139a3c31da7` |
| 13 | `def` | [mkResourceExhaustedFile](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkresourceexhaustedfile.md) | 199 | `declaration-track:cf388e47270f21eec7b1d5b610c1c7b1f40a08a1de27b6755aba91a3e43dd7da` |
| 14 | `def` | [mkUnsupportedOperation](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkunsupportedoperation.md) | 203 | `declaration-track:dc5df06a86fa7d392eae16ebfd8f6108a6e59833b0e32f535e8dfb08c63aeeb9` |
| 15 | `def` | [mkResourceExhausted](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkresourceexhausted.md) | 207 | `declaration-track:fc17f1799c3230e0c57beb7dbed5dc4ddf6292df1d805487b6f2320f1ed37d4d` |
| 16 | `def` | [mkAlreadyExists](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkalreadyexists.md) | 211 | `declaration-track:542e9e7b2878ae32704baeaf943c12bd2eca2a04a0af1cf933246230e32d54d9` |
| 17 | `def` | [mkInappropriateType](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkinappropriatetype.md) | 215 | `declaration-track:e4a94acfb9734c7f3b3fb6b7762c8a69c4f3c81514e97f2ffe030b265b15c029` |
| 18 | `def` | [mkNoSuchThing](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mknosuchthing.md) | 219 | `declaration-track:8be47becb157a744dd1f94f433442f465d71ba2875f6f19547431126b7b72055` |
| 19 | `def` | [mkResourceVanished](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkresourcevanished.md) | 223 | `declaration-track:508a5db157c9f27421a45b553c97ce6fe59d67587f0d33cdccad6184b888d921` |
| 20 | `def` | [mkResourceBusy](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkresourcebusy.md) | 227 | `declaration-track:4e15c1c6f4d0981c10be164721d41a57a2179025030143f557967d9c197da89b` |
| 21 | `def` | [mkInvalidArgument](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkinvalidargument.md) | 231 | `declaration-track:8abe33b99979261bdbb48028d2c9015ed28f425db643c9af36711f3e6d5c3ba5` |
| 22 | `def` | [mkOtherError](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkothererror.md) | 235 | `declaration-track:56d74a1d08266683e87e5cb4f9a99fd054611f9e5bcc6837e6220d652dea7022` |
| 23 | `def` | [mkPermissionDenied](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkpermissiondenied.md) | 239 | `declaration-track:2a71310f241cb5f88ef551bae5846b91cbb468af51bf6a76cda8aaef5bb4e06f` |
| 24 | `def` | [mkHardwareFault](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkhardwarefault.md) | 243 | `declaration-track:ecc73364df4ccd9fef439f1580c7e8e08f98643d2b22d04112ec1c93a723d823` |
| 25 | `def` | [mkUnsatisfiedConstraints](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkunsatisfiedconstraints.md) | 247 | `declaration-track:9c6f8a97b9f5f9acad92386a3da4f445cc20d6d16751cc727b56b46dda5b50ff` |
| 26 | `def` | [mkIllegalOperation](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkillegaloperation.md) | 251 | `declaration-track:97ebbe718637d44ec785d348d1c9c61eb2333a969d0001827cfb3bcd8c4da5c9` |
| 27 | `def` | [mkProtocolError](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mkprotocolerror.md) | 255 | `declaration-track:660736bfaf406fe0c9eb2a96650cab6edec2b39dab3c468a7b1ab63dc84814aa` |
| 28 | `def` | [mkTimeExpired](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/mktimeexpired.md) | 259 | `declaration-track:7d736887f9ab457bb1cce8ebcbd9ff8a69b113babf01e6a6137bdf246c142745` |
| 29 | `def` | [downCaseFirst](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/downcasefirst.md) | 262 | `declaration-track:7eae4201fb634d79ff4acd1d3a70c86a06953544cd2c817ed0caf13241d23b88` |
| 30 | `def` | [fopenErrorToString](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/fopenerrortostring.md) | 264 | `declaration-track:6f59fb96e91576a3111882f9634a42cf8fa4fce59976d469f69683b6655c70a0` |
| 31 | `def` | [otherErrorToString](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/othererrortostring.md) | 268 | `declaration-track:a97043369bfd2ab6157df393af2f700727c0b93a3e645b0df9cb911bf85b4593` |
| 32 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/tostring.md) | 280 | `declaration-track:dd26c97fe1cca9b71e7440fc950bbe6e346679bc8f6df8614c88e75dfa8011e2` |
| 33 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/IOErrorNamespacedPublic.lean/declarations/instance.md) | 307 | `declaration-track:76752c2884d2c41e66b39108544593b3d2e3f07a8bf27191c1f9d222b2543ff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1f8ed984bd595dab02532f33b252aac3391f2a8bdae048383abda0227b1ed55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IOError/Variant639e429d1d43a69b86978a84b0fbb4c3877df203e4483a3fd1c6581f4608dd8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
