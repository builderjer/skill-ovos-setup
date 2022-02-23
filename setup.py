#!/usr/bin/env python3
from setuptools import setup

# skill_id=package_name:SkillClass
PLUGIN_ENTRY_POINT = 'mycroft-pairing.mycroftai=ovos_skill_setup:PairingSkill'
# in this case the skill_id is defined to purposefully replace the mycroft version of the skill,
# or rather to be replaced by it in case it is present. all skill directories take precedence over plugin skills


setup(
    # this is the package name that goes on pip
    name='ovos-skill-setup',
    version='0.0.1',
    description='OVOS setup skill plugin',
    url='https://github.com/builderjer/skill-ovos-setup@custom/setup.py',
    author='builderjer',
    author_email='builderjer@gmail.com',
    license='Apache-2.0',
    package_dir={"ovos_skill_setup": ""},
    package_data={'ovos_skill_setup': ["locale/*"]},
    packages=['ovos_skill_setup'],
    include_package_data=True,
    install_requires=["ovos-plugin-manager>=0.0.2",
                      "ovos-local-backend",
                      "ovos-stt-plugin-chromium",
                      "ovos_workshop>=0.0.5a1",
                      "ovos-stt-plugin-vosk",
                      "ovos-tts-plugin-mimic",
                      "ovos-tts-plugin-mimic2"],
    keywords='ovos skill plugin',
    entry_points={'ovos.plugin.skill': PLUGIN_ENTRY_POINT}
)
