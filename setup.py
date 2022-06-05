#!/usr/bin/env python3
from setuptools import setup

# skill_id=package_name:SkillClass
PLUGIN_ENTRY_POINT = 'ovos-skill-setup.openvoiceos=ovos_skill_setup:PairingSkill'

setup(
    # this is the package name that goes on pip
    name='ovos-skill-setup',
    version='0.0.1',
    description='OVOS setup skill plugin',
    url='https://github.com/OpenVoiceOS/skill-ovos-setup',
    author='JarbasAi',
    author_email='jarbasai@mailfence.com',
    license='Apache-2.0',
    package_dir={"ovos_skill_setup": ""},
    package_data={'ovos_skill_setup': ["locale/*"]},
    packages=['ovos_skill_setup'],
    include_package_data=True,
    install_requires=["ovos-plugin-manager>=0.0.2",
                      "ovos_workshop>=0.0.7a8",
                      "neon-tts-plugin-larynx-server",
                      "ovos-stt-plugin-vosk",
                      "ovos-tts-plugin-mimic",
                      "ovos-tts-plugin-mimic2"],
    keywords='ovos skill plugin',
    entry_points={'ovos.plugin.skill': PLUGIN_ENTRY_POINT}
)
