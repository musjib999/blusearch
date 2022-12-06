import 'package:blusearch/app/index.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(AppAsset.business1,
                  fit: BoxFit.fill, height: 25.h,
              ),
            ),
            SizedBox(height: 18.sp),
            Container(
              margin: EdgeInsets.all(12.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      SizedBox(
                        width: 40.w,
                        child: Text('Faidu Cakes ‘N’ Delicacies'.toUpperCase(), style: GoogleFonts.montserrat(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                      Text(
                        'Verified'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.successGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 31.w, child: InvestmentCategoryTag(
                              title: 'Top notch brand'.toUpperCase(),
                              backgroundColor: AppColors.primaryColor,
                              titleColor: AppColors.white,
                              fontSize: 8,
                              marginRight: 0,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.sp),
                  const Text('About Business', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                  SizedBox(height: 6.sp),
                  const Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi non id auctor velit nullam purus. Enim morbi amet amet, gravida tincidunt. Ullamcorper ornare eu odio dignissim. Neque vestibulum, molestie consectetur pellentesque sodales. Ultrices commodo enim commodo, ut. Et duis enim lectus ut. Vitae, dui metus interdum odio. Auctor consectetur elit lectus vestibulum scelerisque. 

Amet quam tristique vitae in lacus at sed semper. Blandit natoque id dapibus fermentum vel. Ut massa turpis lacus a, sagittis malesuada luctus tincidunt at. Nulla ornare ut aliquam nisl, quis vulputate blandit ut imperdiet.
Scelerisque id congue ligula libero, vitae. Id proin pharetra libero, pellentesque eu elementum sit elementum. Maecenas.'''),
                  SizedBox(height: 16.sp),
                  const Text('Social Media Links', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                  SizedBox(height: 12.sp),
                  const SocialMediaCard(title: 'Facebook', link: 'https://www.facebook.com/faiducake...', icon: AppAsset.facebook,),
                  SizedBox(height: 8.sp),
                  const SocialMediaCard(title: 'Instagram', link: 'https://www.instagram.com/faiducake...', icon: AppAsset.instagram,),
                  SizedBox(height: 8.sp),
                  const SocialMediaCard(title: 'Twitter', link: 'https://www.twitter.com/faiducake...', icon: AppAsset.twitter,),
                  SizedBox(height: 8.sp),
                  const SocialMediaCard(title: 'LinkedIn', link: 'https://www.linkedIn.com/faiducake...', icon: AppAsset.linkedin,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  final String title, link, icon;
  const SocialMediaCard({
    Key? key,
    required this.title, required this.link, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.inputGrey),
      ),
      child: ListTile(
        leading: Image.asset(icon, width: 28,),
        title: Text(title),
        subtitle: Text(link, maxLines: 1,),
      ),
    );
  }
}
