.onAttach <- function(lib, pkg,...){

  packageStartupMessage(ringostatWelcomeMessage())

}


ringostatWelcomeMessage <- function(){
  # library(utils)

  paste0("\n",
         "---------------------\n",
         "Welcome to ringostat version ", utils::packageDescription("ringostat")$Version, "\n",
         "\n",
         "Author:           Alexey Seleznev (Head of analytics dept at Netpeak).\n",
         "Telegram channel: https://t.me/R4marketing \n",
         "YouTube channel:  https://www.youtube.com/R4marketing/?sub_confirmation=1 \n",
         "Email:            selesnow@gmail.com\n",
         "Site:             https://selesnow.github.io \n",
         "Blog:             https://alexeyseleznev.wordpress.com \n",
         "Facebook:         https://facebook.com/selesnown \n",
         "Linkedin:         https://www.linkedin.com/in/selesnow \n",
         "\n",
         "Type ?ringostat for the main documentation.\n",
         "The github page is: https://github.com/selesnow/ringostat/\n",
         "\n",
         "Suggestions and bug-reports can be submitted at: https://github.com/selesnow/ringostat/issues\n",
         "Or contact: <selesnow@gmail.com>\n",
         "\n",
         "\tTo suppress this message use:  ", "suppressPackageStartupMessages(library(ringostat))\n",
         "---------------------\n"
  )
}
